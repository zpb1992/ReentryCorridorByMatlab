function [ h ] = RCoverload( v , a )
%RCOVERLOAD Summary of this function goes here
%   Detailed explanation goes here

    global p0 m S maxLoad B g0;
    
    Cl=get_CL(v,a);
    Cd=get_CD(v,a);
    
    h=log(2*maxLoad*m*g0./(v.^2*S.*(Cl.^2+Cd.^2).^0.5*p0))/(-B);

end

