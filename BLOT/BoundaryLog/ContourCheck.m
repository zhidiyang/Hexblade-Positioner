% Countour Check for Jgap Function.
X1=1;Y1=0;
X2=0;Y2=1;
Ofactor=2.5;
f=@(x,y) (x-X1).^2+(y-Y1).^2+(x-X2).^2+(y-Y2).^2-sign((x-X1).*sqrt(2)./2+(y-Y1).*sqrt(2)./2).*Ofactor.*((x-X1).*sqrt(2)./2+(y-Y1).*sqrt(2)./2).^2;% Jgap function
x = linspace(0,10);
y = linspace(0,10);
[X,Y] = meshgrid(x,y);
Z=f(X,Y);
Level=[linspace(-50,0,11),2];
figure
contour(X,Y,Z,Level,'ShowText','on')
hold on
plot([X1,X2],[Y1,Y2],'bo')
plot([X1,X2],[Y1,Y2],'b')
grid on
axis equal