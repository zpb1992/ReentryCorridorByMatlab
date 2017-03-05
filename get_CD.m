
function CD = get_CD(v,alpha)

% 获得阻力系数CD

% 使用 孙勇 论文中P31的简化模型 alpha 单位为 rad , v 单位为 m/s

% 数据采用 《A Common Aero Vehicle (CAV) Model, Description, and Employment Guide 》

global g0 R0 Vs;

v=v*(g0*R0)^0.5/Vs;

CD1=2.3795; CD2=0.3983; CD3=-1.0794*10^(-3); CD0=0.0234;

CD= CD1*(alpha.^2) + CD2*exp(CD3*v) + CD0;









