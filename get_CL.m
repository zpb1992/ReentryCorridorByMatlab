
function CL = get_CL(v,alpha)

% �������ϵ��CL

% ʹ�� ���� ������P31�ļ�ģ�� alpha ��λΪ rad , v ��λΪ m/s

% ���ݲ��� ��A Common Aero Vehicle (CAV) Model, Description, and Employment Guide ��

global g0 R0 Vs

v=v*(g0*R0)^0.5/Vs;

CL1=2.9451; CL2=0.2949; CL3=-3.3943*10^(-4); CL0=-0.2355;

CL= CL1*alpha + CL2*exp(CL3*v) + CL0;




