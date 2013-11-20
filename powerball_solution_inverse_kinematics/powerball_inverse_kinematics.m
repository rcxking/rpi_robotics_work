function th_out=powerball_inverse_kinematics(T06,th_p)
%#codegen
%% Inverse Kinematics Schunk Powerball LWA 4.6
%	th_out=inverse_kinematics(T06, theta_previous)
% T06= [4x4]
% theta_previous= [1x6]


th_ik=zeros(7,8);  % initialize working solution variable
th_limit=[170; 110; 155; 170; 140; 170;]*pi/180; %Symetric Joint limits Schunk Powerball 4.6
d_1=205;	%base
a_2=350;	%upper arm
d_4=305;	%forearm
d_6=75;			%hand



%%
% Solve for $\theta_3$
dx=T06(1:3,1:3)*[0;0;d_6];				% Vector from spherical wrist to tool tip
d_elbow=T06(1:3,4)-dx-[0;0;d_1];	% Vector with the tool tip distance and base distance removed
d_elbow_norm =norm(d_elbow);		% Distance from joints 1&2 to spherical wrist

temp=pi-acos((a_2^2+d_4^2-d_elbow_norm^2)/(2*a_2*d_4));		% Angle of Elbow

th_ik(3,1:4)=temp;		th_ik(7,1:4)= th_ik(7,1:4)+ 2^1;% Elbow up
th_ik(3,5:8)=-temp;    %th_ik(7,5:8)=th_ik(7,5:8)+0*2^1; % Elbow Down


%%
% Solve for $\theta_1$ & $\theta_2$

[theta1_1,theta2_1]=subproblem2([0;0;1],[0;1;0],[0; 0; a_2; ]+ [-d_4*sin(th_ik(3,1)); 0; d_4*cos(th_ik(3,1))],d_elbow); % 2 Solutions for theta3(1) Elbow up
[theta1_2,theta2_2]=subproblem2([0;0;1],[0;1;0],[0; 0; a_2; ]+[-d_4*sin(th_ik(3,5)); 0; d_4*cos(th_ik(3,5))],d_elbow);   % 2 Solutions for theta3(2) Elbow down

% Replace invalid solutions from subproblem2
if isnan(theta1_1(1)) || isnan(theta1_1(2))
    theta1_1=[th_p(1), th_p(1)];
end

if isnan(theta1_2(1)) || isnan(theta1_2(2))
    theta1_2=[th_p(1), th_p(1)];
end

if isnan(theta2_1(1)) || isnan(theta2_1(2))
    theta2_1=[th_p(1), th_p(1)];
end
if isnan(theta2_2(1)) || isnan(theta2_2(2))
    theta2_2=[th_p(1), th_p(1)];
end

th_ik(1,1:4)=[theta1_1(1:2) theta1_1(1:2)];   th_ik(7,[1,3])=th_ik(7,[1,3])+2^0;  %Shoulder right
th_ik(1,5:8)=[theta1_2(1:2) theta1_2(1:2)];  th_ik(7,[5,7])=th_ik(7,[5,7])+2^0;  %Shoulder right
th_ik(2,1:4)=[theta2_1(1:2) theta2_1(1:2)];
th_ik(2,5:8)=[theta2_2(1:2) theta2_2(1:2)];

%%
% $\theta_4$, $\theta_5$, $\theta_6$
for z=[1:2, 5:6]
    th_1=th_ik(1,z);
    th_2=th_ik(2,z);
    th_3= th_ik(3,z);
    % 	[th_1,th_2,th_3]
    T01 = symDH(th_1, d_1, 0, -pi/2);		% Create homogenous transform for joint angle 1 for EACH joint configuration.
    T12 = symDH(th_2-pi/2, 0, a_2, pi);
    T23 = symDH(th_3-pi/2, 0, 0,-pi/2);
    %
    
    T02=T01*T12;
    T03=T02*T23;		% Create homogenous transform for first 3 joint angles for EACH joint configuration.
    
    Twrist=([T03(1:3,1:3).',-T03(1:3,1:3).'*T03(1:3,4);0 0 0 1])*T06;			% Remove first 3 joint angles to isolate joints $\theta_4$, $\theta_5$, $\theta_6$
    
    th_ik(4,z)=atan2(-Twrist(2,3),-Twrist(1,3));	th_ik(7,z)=th_ik(7,z)+2^2;  %Wrist UP
    th_ik(5,z)=acos(Twrist(3,3)); %
    th_ik(6,z)=atan2(-Twrist(3,2),Twrist(3,1));
    
    th_ik(4,z+2)=atan2(Twrist(2,3),Twrist(1,3)); %th_ik(7,z+2)=th_ik(7,z+2)+0;  %Wrist DOWN
    th_ik(5,z+2)=-acos(Twrist(3,3));   %
    th_ik(6,z+2)=atan2(Twrist(3,2),-Twrist(3,1));
end

%%
% Joint limits and find closest to previous
counter=0;
temp_out=zeros(7,8);
for x=1:8			%Joint limit check
    if sum(abs(th_ik(1:6,x)) <=th_limit)==6
        counter=counter+1;
        temp_out(1:7,counter)=th_ik(1:7,x);
    end
end
temp_out_lim=temp_out(1:7,1:counter);  % Keep solutions within Joint limits

if max(abs(th_p))>0			% Check for existance of th_p (theta previous)
    min_diff=zeros(counter,1);
    for x=1:counter			%Find closest solution to th_p (theta previous)
        min_diff(x)=norm(temp_out_lim(1:6,x).'-th_p);		% Distance of each solution
        
    end
    th_out=temp_out_lim(:,min_diff==min(min_diff));  % Use closest solution
else
    th_out=temp_out_lim;  % Use all solutions with joint limits
end




end

function T = symDH(th,d,a,al)
	% homogenous transform matrix from DH parameters
	T=[	cos(th)		-sin(th)*cos(al)	sin(th)*sin(al)		a*cos(th);...
		sin(th)		cos(th)*cos(al)		-cos(th)*sin(al)	a*sin(th);...
		0				sin(al)					cos(al)					d;
		0					0						0						1];
end

function [theta1,theta2]=subproblem2(k1,k2,p,q)
% Finds theta1 & theta2 where two vectors p & q intersect when rotated about vectors k1 and k2
	k12=k1'*k2;
	pk=p'*k2;
	qk=q'*k1;

	% check if solution exists

	if abs(k12^2-1)<eps;theta1=[NaN NaN]; theta2=[NaN NaN];
		disp('no solution (***1***)');
		return;
	end

	a = [k12 -1;-1 k12]*[pk;qk]/(k12^2-1);

	bb=(norm(p)^2-norm(a)^2-2*a(1)*a(2)*k12);
	if abs(bb)<eps;bb=0;end
	if bb<0;theta1=[NaN NaN];theta2=[NaN NaN];
		disp('no solution (***2***)');
		return;
	end

	% check if there is only 1 solution
	gamma=sqrt(bb)/norm(cross(k1,k2));
	if abs(gamma)<eps;
		c1=[k1 k2 cross(k1,k2)]*[a;gamma];
		theta2=[subproblem1(k2,p,c1) NaN];
		theta1=[-subproblem1(k1,q,c1) NaN];
	end

	% general case: 2 solutions

	theta1=zeros(1,2);
	theta2=zeros(1,2);

	c1=[k1 k2 cross(k1,k2)]*[a;gamma];
	c2=[k1 k2 cross(k1,k2)]*[a;-gamma];
	theta2(1)=subproblem1(k2,p,c1);
	theta2(2)=subproblem1(k2,p,c2);

	theta1(1)=-subproblem1(k1,q,c1);
	theta1(2)=-subproblem1(k1,q,c2);
end

function [theta]=subproblem1(k,p,q)
% [theta]=subproblem1(k,p,q)
% 1 unique solution

k=k/norm(k);
pp=p-(p.'*k)*k;
qp=q-(q.'*k)*k;

epp=pp/norm(pp);
eqp=qp/norm(qp);

theta=subproblem0(epp,eqp,k);
end

function [theta]=subproblem0(p,q,k)
% [theta]=subproblem0(p,q,k)
% 1 unique solution


pp=p/norm(p);
qp=q/norm(q);

theta=2*atan2(norm(pp-qp),norm(pp+qp));

if k'*(cross(p,q))<0
    theta=-theta;
end
end