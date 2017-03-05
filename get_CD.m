
function CD = get_CD(v,alpha)

% �������ϵ��CD

% ʹ�� ���� ������P31�ļ�ģ�� alpha ��λΪ rad , v ��λΪ m/s

% ���ݲ��� ��A Common Aero Vehicle (CAV) Model, Description, and Employment Guide ��

global g0 R0 Vs;

v=v*(g0*R0)^0.5/Vs;

CD1=2.3795; CD2=0.3983; CD3=-1.0794*10^(-3); CD0=0.0234;

CD= CD1*(alpha.^2) + CD2*exp(CD3*v) + CD0;









