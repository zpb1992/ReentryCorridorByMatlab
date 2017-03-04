function [ h ] = RCdynpre( v )
%DYNPRE Summary of this function goes here
%   Detailed explanation goes here
    %h=log(2*500000./(1.2258*v.^2))/(-1.3785*10^-4);
    global maxDyn p0 B;
    h=log(2*maxDyn./(p0*v.^2))/(-B);
end

