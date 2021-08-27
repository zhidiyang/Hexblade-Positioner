function [mVolume, mMass, CoM, Ix, Iy, Iz, I, pointBottom, pointTop] = Right_Prism_Properties_Without_Inertia(xArray, yArray, zThickness, pho)

mVolume = 0;
mMass = 0;
CoM = [0;0;0];
Ix = 0;
Iy = 0;
Iz = 0;
I = zeros(3);

pointBottom = [xArray;yArray;xArray*0];
pointTop = [xArray;yArray;xArray*0+zThickness];

n = length(xArray);

if length(yArray) ~= n
	display('Error!')
end

xArray = [xArray,xArray(1)];
yArray = [yArray,yArray(1)];

A = 1/2*sum(xArray(1:n).*yArray(2:n+1)-xArray(2:n+1).*yArray(1:n));
mVolume = A*zThickness;
mMass = mVolume*pho;

Cx = 1/6/A*sum((xArray(1:n)+xArray(2:n+1)).*(xArray(1:n).*yArray(2:n+1)-xArray(2:n+1).*yArray(1:n)));
Cy = 1/6/A*sum((yArray(1:n)+yArray(2:n+1)).*(xArray(1:n).*yArray(2:n+1)-xArray(2:n+1).*yArray(1:n)));
CoM = [Cx;Cy;zThickness/2];

% Change the origin to the CoM
xArray = xArray-Cx;
yArray = yArray-Cy;

Ixx = 0;

Iyy = 0;

Izz = 0;

Ixy = 0;

Ixz = 0;

Iyz = 0;

I = [Ixx, Ixy, Ixz;...
	 Ixy, Iyy, Iyz;...
	 Ixz, Iyz, Izz];

end