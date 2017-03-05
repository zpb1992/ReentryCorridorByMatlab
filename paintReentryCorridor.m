clear; clc;
global C1 Rd p0 g0 Vs B R0 S m DtoR b;
global maxHeat maxDyn maxLoad;

C1=11030;
Rd=0.1;
p0=1.2258;
g0=9.8;
Vs=331.45;
B=1.3785*10^-4;
R0=6371000;
S=0.4839;
m=907.2;
DtoR=pi/180;
b=80*DtoR;

maxHeat=800;
maxDyn=500*10^3;
maxLoad=8;

v=1000:100:8000;
a=ones(1,length(v));
a=a*0*DtoR;
h1=RCheat(v);
h2=RCdynpre(v);
h3=RCoverload(v,a);

h4=QEGC(v,a);

grid on
hold on

plot(v,h1,'o');
plot(v,h2,'-');
plot(v,h3,'--');

plot(v,h4,'*');

legend('热流密度','动压','过载');

hold off
