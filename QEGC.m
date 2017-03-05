function [ h ] = QEGC( v , a )
%QEGC Summary of this function goes here
%   Detailed explanation goes here
    global p0 B R0 S b g0 m;
    
    
    syms r;
    
    for i=1:1:length(v)
        Cl=get_CL(v(i),a(i));
        eq=@(r)(p0*exp(-B*(r-R0))*v(i)^2*S*Cl*cos(b)/m/2+v(i)^2/r-R0^2*g0/r^2);
    
        r0=(6471000-6391000)*i/length(v)+6391000;
    
        R=fsolve(eq,r0);
        
        h(i)=R-R0;
    end

end

