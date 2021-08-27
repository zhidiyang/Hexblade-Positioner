function [mVolume, mMass, CoM, Ix, Iy, Iz, I, pointBottom, pointTop] = Right_Prism_Properties(xArray, yArray, zThickness, pho)

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

Ixx = pho*zThickness*1/12*sum(...
	(xArray(1:n).*yArray(2:n+1)-xArray(2:n+1).*yArray(1:n)).*...
	(zThickness^2/2+yArray(1:n).*yArray(1:n)+yArray(1:n).*yArray(2:n+1)+yArray(2:n+1).*yArray(2:n+1)));

Iyy = pho*zThickness*1/12*sum(...
	(xArray(1:n).*yArray(2:n+1)-xArray(2:n+1).*yArray(1:n)).*...
	(zThickness^2/2+xArray(1:n).*xArray(1:n)+xArray(1:n).*xArray(2:n+1)+xArray(2:n+1).*xArray(2:n+1)));

Izz = pho*zThickness*1/12*sum(...
	(xArray(1:n).*yArray(2:n+1)-xArray(2:n+1).*yArray(1:n)).*...
	(xArray(1:n).*xArray(1:n)+xArray(1:n).*xArray(2:n+1)+xArray(2:n+1).*xArray(2:n+1)+yArray(1:n).*yArray(1:n)+yArray(1:n).*yArray(2:n+1)+yArray(2:n+1).*yArray(2:n+1)));

Ixy = -pho*zThickness*1/24*sum(...
	(xArray(1:n).*yArray(2:n+1)-xArray(2:n+1).*yArray(1:n)).*...
	(2*xArray(1:n).*yArray(1:n)+xArray(1:n).*yArray(2:n+1)+xArray(2:n+1).*yArray(1:n)+2*xArray(2:n+1).*yArray(2:n+1)));

Ixz = 0;

Iyz = 0;

I = [Ixx, Ixy, Ixz;...
	 Ixy, Iyy, Iyz;...
	 Ixz, Iyz, Izz];

end