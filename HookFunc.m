function [theta,Force] = HookFunc(k)
% Hookes law function for a spring at theta

thetamax = 90;
thetamin = 0;
theta = linspace(thetamin, thetamax, 180);

Force = k*theta;