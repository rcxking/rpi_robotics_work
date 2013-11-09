function powerball_IK()


%% Symbolic computation of fwd kin
th = sym('th_%d', [6 1]);
d = sym('d_%d', [6 1]);
a = sym('a_%d', [6 1]);
% al = sym('al_%d', [6 1]);

s_pi2 = sym(pi/2);

T01_ = symDH(th(1), d(1), 0, -s_pi2);
T12 = symDH(th(2)-s_pi2, 0, a(2), pi);
T23 = symDH(th(3)-pi/2, 0, 0,-pi/2);
T34 = symDH(th(4), d(4), 0, s_pi2);
T45 = symDH(th(5), 0, 0, -s_pi2);
T56 = symDH(th(6), d(6), 0, 0);

% T01_ = symDH(th(1),			d(1), 0,		0);
% T12 = symDH(th(2)+s_pi2, 0,		0,		pi/2);
% T23 = symDH(th(3)-pi/2,	 0,		a(2),	pi);
% T34 = symDH(th(4),			d(4), 0,	-pi/2);
% T45 = symDH(th(5),			0,		0,	 s_pi2);
% T56 = symDH(th(6),			d(6), 0,	-s_pi2);

T06 = (T01_ * T12 * T23 * T34 * T45 * T56);
T06=rewrite(T06, 'sincos');


%% Forward check
s=floor(rand(1)*1000)
% s=965;%468, 80, 808
rng(s);
th_limit=[170 110 155 170 140 170]*pi/180; %Symetric Joint limits
th_1=(rand*th_limit(1)*2-th_limit(1));
th_2=(rand*th_limit(2)*2-th_limit(2));
th_3=(rand*th_limit(3)*2-th_limit(3));
th_4=(rand*th_limit(4)*2-th_limit(4));
th_5=(rand*th_limit(5)*2-th_limit(5));
th_6=(rand*th_limit(6)*2-th_limit(6));

% th_1=0;
% th_2=pi/4;
% th_3=pi/4;
% th_4=0;
% th_5=0;
% th_6=0;

th_act=[th_1, th_2, th_3 th_4 th_5 th_6].'

d_1=205;
a_2=350;
d_4=305;
d_6=75;

T00=eye(4);
T01=eval(T01_);
T02=T01*eval(T12);
T03=T02*eval(T23);
T04=T03*eval(T34);
T05=T04*eval(T45);
T06=T05*eval(T56);
T06_=T06;

% th_p(1)=th_1*(1+(rand-.5)*.2);
% th_p(2)=th_2* (1+(rand-.5)*.2);
% th_p(3)=th_3* (1+(rand-.5)*.2);
% th_p(4)=th_4* (1+(rand-.5)*.2);
% th_p(5)=th_5* (1+(rand-.5)*.2);
% th_p(6)=th_6* (1+(rand-.5)*.2);

th_p=[0 0 0 0 0 0];

y=[0 1 2 3 4 5 6];
col=['rcgmrkbg'];
figure(101); clf; hold on; axis equal;
dx=eval(T06(1:3,1:3)*T56(1:3,4));
% plot3(0,0,0,'h','MarkerSize',10,'MarkerFaceColor','m'); plot3(T06(1,4)-dx(1),T06(2,4)-dx(2),T06(3,4)-dx(3),'s','MarkerSize',10,'MarkerFaceColor','c');
for x=1:6;
	
	eval(['plot3([T0' num2str(y(x)) '(1,4),T0' num2str(y(x+1)) '(1,4)],[T0' num2str(y(x)) '(2,4),T0' num2str(y(x+1)) '(2,4)],[T0' num2str(y(x)) '(3,4),T0' num2str(y(x+1)) '(3,4)],''' col(x) ''',''LineWidth'',2  )']);
	
end;
grid on
view(3); camorbit(- 65,70); camorbit(-43,0,'camera')
xlabel('X'); ylabel('Y'); zlabel('Z');


%% Inverse Kinematics
T06,th_p
 th_out=powerball_inverse_kinematics(T06,th_p)

%% Inverse Kinematics Check Plotting

th = sym('th_%d', [6 1]);

y=[0 1 2 3 4 5 6];
col2=[': '; '--';  '-.'; '- '; ': '; '--';  '-.'; '- ';];
figure(772); clf; hold on;
for z=1:size(th_out,2)
	th_1=th_out(1,z); %0.6268;%
	th_2=th_out(2,z);%-1.3524;%
	th_3= th_out(3,z); %-2.2171;%
	th_4= th_out(4,z);
	th_5= th_out(5,z);
	th_6= th_out(6,z);
	T01=eval(T01_);
	T02=T01*eval(T12);
	T03=T02*eval(T23);
	T04=T03*eval(T34);
	T05=T04*eval(T45);
	T06=T05*eval(T56);
	
	subplot(2,4, th_out(7,z)+1);
	plot3(0,0,0,'h','MarkerSize',10,'MarkerFaceColor','m'); hold on;
	plot3(T06_(1,4),T06_(2,4),T06_(3,4),'s','MarkerSize',10,'MarkerFaceColor','c');
	
	for x=1:6;
		
		eval(['plot3([T0' num2str(y(x)) '(1,4),T0' num2str(y(x+1)) '(1,4)],[T0' num2str(y(x)) '(2,4),T0' num2str(y(x+1)) '(2,4)],[T0' num2str(y(x)) '(3,4),T0' num2str(y(x+1)) '(3,4)], ''' col(z) col2(z,:) ''',''LineWidth'',2  )']);
		
	end
	view(3); axis equal; grid on;
	title(  ['Configuration: ' dec2bin(th_out(7,z),3)]  );
end

sum(abs(th_out(1:6,:)-repmat(th_act,1,size(th_out(1:6,:),2)))<.001,1)


% keyboard
end


function T = symDH(th,d,a,al)

T=[	cos(th)		-sin(th)*cos(al)	sin(th)*sin(al)		a*cos(th);...
	sin(th)		cos(th)*cos(al)		-cos(th)*sin(al)	a*sin(th);...
	0				sin(al)					cos(al)					d;
	0					0						0						1];
end
