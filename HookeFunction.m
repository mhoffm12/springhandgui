function [theta,Force] = hookes(k)
% Hookes law function fo r a spring at theta

thetamax = 90;
thetamin = 0;
theta = linspace(thetaminm, thetamax, 180);

Force = k*theta;


