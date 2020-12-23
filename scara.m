function [Jp, G, ucHizMatrisS] = scara(theta1, theta2, theta4, d3, d30, a2, a1, dtheta1, dtheta2, dd3)
 
theta1 = deg2rad(theta1);
theta2 = deg2rad(theta2);
theta4 = deg2rad(theta4);


G =[ cos(theta1 + theta2 + theta4), -sin(theta1 + theta2 + theta4), 0, a2*cos(theta1 + theta2) + a1*cos(theta1);
 sin(theta1 + theta2 + theta4),  cos(theta1 + theta2 + theta4), 0, a2*sin(theta1 + theta2) + a1*sin(theta1);
                             0,                              0, 1,                                 d3 - d30;
                             0,                              0, 0,                                        1];
 
Jp =[ - a2*sin(theta1 + theta2) - a1*sin(theta1),                 -a2*sin(theta1 + theta2), 0;
   a2*cos(theta1 + theta2) + a1*cos(theta1), a2*cos(theta1 + theta2) + a1*cos(theta1), 0;
                                          0,                                        0, 1];


ucHizMatrisS = Jp * [dtheta1; dtheta2; dd3]; 