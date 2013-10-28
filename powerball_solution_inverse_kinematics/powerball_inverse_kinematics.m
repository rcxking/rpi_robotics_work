function th_out=powerball_inverse_kinematics(T06,th_p)
%#codegen
%% Inverse Kinematics Schunk Powerball LWA 4.6
%	th_out=inverse_kinematics(T06, theta_previous)
% T06= [4x4]
% theta_previous= [6x1]

% T06=zeros(4,4);
% th_p=[0;0;0;0;0;0];
% 
% switch nargin
% 	case 1
% 		T06=varargin{1};
% 	case 2
% 		T06=varargin{1};
% 		th_p=varargin{2};
% end
th_ik=zeros(6,8);
th_limit=[170; 110; 155; 170; 140; 170;]*pi/180; %Symetric Joint limits Schunk Powerball 4.6
d_1=205;	%base
a_2=350;	%upper arm
d_4=305;	%forearm
d_6=75;			%hand
% th = sym('th_%d', [6 1]);




%%
% Solve for $\theta_3$
dx=T06(1:3,1:3)*[0;0;d_6];
d_elbow=T06(1:3,4)-dx-[0;0;d_1];
d_elbow_norm =norm(d_elbow);

temp=pi-acos((a_2^2+d_4^2-d_elbow_norm^2)/(2*a_2*d_4));

th_ik(3,1:4)=temp;
th_ik(3,5:8)=-temp;


%%
% Solve for $\theta_1$ & $\theta_2$

[theta1_1,theta2_1]=subproblem2([0;0;1],[0;-1;0],[0; 0; a_2; ]+ [-d_4*sin(th_ik(3,1)); 0; d_4*cos(th_ik(3,1))],d_elbow); % 2 Solutions for theta3(1)
[theta1_2,theta2_2]=subproblem2([0;0;1],[0;-1;0],[0; 0; a_2; ]+[-d_4*sin(th_ik(3,5)); 0; d_4*cos(th_ik(3,5))],d_elbow);   % 2 Solutions for theta3(2)

if isnan(theta1_1(1)) || isnan(theta1_1(2))
	theta1_1=[th_p(1); th_p(1)];
end

if isnan(theta1_2(1)) || isnan(theta1_2(2))
	theta1_2=[th_p(1); th_p(1)];
end

if isnan(theta2_1(1)) || isnan(theta2_1(2))
	theta2_1=[th_p(1); th_p(1)];
end
if isnan(theta2_2(1)) || isnan(theta2_2(2))
	theta2_2=[th_p(1); th_p(1)];
end

%%
% $\theta_4$, $\theta_5$, $\theta_6$
th_ik(1,1:4)=[theta1_1(1:2) theta1_1(1:2)];
th_ik(1,5:8)=[theta1_2(1:2) theta1_2(1:2)];
th_ik(2,1:4)=[theta2_1(1:2) theta2_1(1:2)];
th_ik(2,5:8)=[theta2_2(1:2) theta2_2(1:2)];

for z=[1:2, 5:6]
	th_1=th_ik(1,z);
	th_2=th_ik(2,z);
	th_3= th_ik(3,z);
	T01 = symDH(th_1, d_1, 0, pi/2);
	T12 = symDH(th_2+pi/2, 0, a_2, 0);
	T23 = symDH(th_3-pi/2, 0, 0, -pi/2);
	T02=T01*T12;
	T03=T02*T23;
	
	Twrist=([T03(1:3,1:3).',-T03(1:3,1:3).'*T03(1:3,4);0 0 0 1])*T06;
	
	th_ik(4,z)=atan2(-Twrist(2,3),-Twrist(1,3));
	th_ik(5,z)=acos(Twrist(3,3)); %
	th_ik(6,z)=atan2(-Twrist(3,2),Twrist(3,1));
	
	th_ik(4,z+2)=atan2(Twrist(2,3),Twrist(1,3));
	th_ik(5,z+2)=-acos(Twrist(3,3));   %
	th_ik(6,z+2)=atan2(Twrist(3,2),-Twrist(3,1));
end

%%
% Joint limits and find closest to previous
counter=0;
temp_out=zeros(6,8);
for x=1:8
	if sum(abs(th_ik(:,x)) <=th_limit)==6
		counter=counter+1;
		temp_out(1:6,counter)=th_ik(:,x);
	end
end
		temp_out_lim=temp_out(1:6,1:counter);
if max(abs(th_p))>0
	min_diff=zeros(counter,1);
	for x=1:counter
		min_diff(x)=norm(temp_out_lim(:,x).'-th_p);
% 		min_diff(x)=((temp_out_lim(1,x)-th_p(1))^2+(temp_out_lim(2,x)-th_p(2))^2+(temp_out_lim(3,x)-th_p(3))^2+(temp_out_lim(4,x)-th_p(4))^2+(temp_out_lim(5,x)-th_p(5))^2+(temp_out_lim(6,x)-th_p(6))^2)^.5;
	end
	th_out=temp_out_lim(:,min_diff==min(min_diff));
else
	th_out=temp_out_lim;
end




end

function T = symDH(th,d,a,al)

T=[	cos(th)		-sin(th)*cos(al)	sin(th)*sin(al)		a*cos(th);...
	sin(th)		cos(th)*cos(al)		-cos(th)*sin(al)	a*sin(th);...
	0				sin(al)					cos(al)					d;
	0					0						0						1];
end

function [theta1,theta2]=subproblem2(k1,k2,p,q)

k12=k1'*k2;
pk=p'*k2;
qk=q'*k1;

% check if solution exists

if abs(k12^2-1)<eps;theta1=[];theta2=[];
	disp('no solution (***1***)');
	return;
end

a=[k12 -1;-1 k12]*[pk;qk]/(k12^2-1);

bb=(norm(p)^2-norm(a)^2-2*a(1)*a(2)*k12);
if abs(bb)<eps;bb=0;end
if bb<0;theta1=[NaN NaN];theta2=[NaN NaN];
	disp('no solution (***2***)');
	return;end

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