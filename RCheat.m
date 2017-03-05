function [ h ] = RCheat( v )
%HEAT Summary of this function goes here
%   Detailed explanation goes here

    global maxHeat Vc B C1 Rd p0 g0 R0;
    
    % my model is error
    h=2*log((maxHeat*(Rd^0.5)/C1)*((g0*R0)^0.5./v).^3.15)/(-B);
    
    %h=log((maxHeat./(7.9686*10^-5*v.^3)).^2/p0)/(-B);
    
end

