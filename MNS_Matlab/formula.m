t=toc;
omega = speed*6*3*pi;

U=[cos(theta)*cos(phi) , sin(theta)*cos(phi) , sin(phi)];
N=[-cos(theta)*sin(phi) , -sin(theta)*sin(phi) , cos(phi)];
% Buy = Bo*cos(theta);
% Bh = Bo*sin(theta);
Hr = Bo*(cos(omega*t)*U + sin(omega*t)*(cross(U,N)));
H = cross(Hr,N);

Bh = Hr(1);
Buy = Hr(2);
Buz = Hr(3);