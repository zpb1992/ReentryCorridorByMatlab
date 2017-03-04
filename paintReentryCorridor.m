clear; clc;
global C1 Rd p0 g0 Vc B R;
global maxHeat maxDyn maxLoad;

C1=11030;
Rd=0.1;
p0=1.2258;
g0=9.8;
Vc=331.45;
B=1.3785*10^-4;
R=6371000;

maxHeat=800*10^3;
maxDyn=500*10^3;
maxLoad=8;

v=1000:100:8000;
h1=RCheat(v);
h2=RCdynpre(v);

grid on
hold on

% ������Ķ��Ǻ�ƽ��߶�
plot(v,h1,'o');
plot(v,h2,'*');
