%%Task1
figure("Name", "Task1");
hold on
grid on
t = 0:0.01:100;
x = exp(-abs(t - 100) / 100).*sin(t);
y = exp(-abs(t - 100) / 100).*cos(t);
z = t;
plot3(x, y, z)
view(110,20)

%%Task2
figure("Name", "Task2");
hold on
grid on
u = (-4 * pi:0.1 * pi:4 * pi)';
v = -4 * pi:0.1 * pi:4 * pi;
x = 0.5 * u * cos(v);
y = 0.5 * u * sin(v);
z = u * ones(size(v));
surf(x, y, z)
view(110,20)

%%Task3
figure("Name", "Task3");
hold on
grid on
u = (-2 * pi:0.1 * pi:2 * pi)';
v = -2 * pi:0.1 * pi:2 * pi;
x = cos(u).*cos(v);
y = 0.6 * cos(u).*sin(v);
z = 0.8 * sin(u).*ones(size(v));
mesh(x,y,z)
hidden off;
view(110,20)

%%Task4
t = 0:0.2:2;
ux0 = 0.5;
uy0 = 0.8;
x = ux0 * t;
y = uy0 * t.*(1 - 0.5 * t);
ux(1:length(x)) = 0.5;
uy = 0.8 * (1 - t);
fign = figure("Name","Task4 - 1");
hold on
grid on
axis equal
quiver(x, y, ux, uy, 0)
figure("Name","Task4 - 2");
hold on
grid on
axis equal
quiver(x, y, ux, uy, 1.5)
figure("Name","Task4 - 3");
hold on
grid on
axis equal
quiver(x, y, ux, uy, 0.3)

%%Task5
figure(fign)
plot(x, y)

%%Task6
figure("Name", "Task6");
grid on
axis equal
compass(ux,uy)

%%Task7
figure("Name", "Task7");
hold on
grid on
axis equal
feather(ux,uy)

%%Task8
figure("Name", "Task8");
grid on
axis equal
u = (-pi:pi / 15:pi)'; 
v = -pi:pi / 15:pi; 
X = 2 * sin(u) * cos(v);
Y = 2 * sin(u) * sin(v); 
Z = 2 * cos(u) * ones(size(v)); 
surf(X, Y, Z)
[U, V, W] = surfnorm(X, Y, Z); 
hold on
quiver3(X, Y, Z, U, V, W, 4, "Color", "r");

%%Task9
figure("Name", "Task9");
hold on
grid on
axis equal
[x,y] = meshgrid(-4:0.05:4, -4:0.05:4);
a = 1;
b = 1;
z = 0.5 * x.^2 / a^2 - y.^2 / b^2;
surf(x,y,z)
[u,v,w] = surfnorm(x,y,z);
hold on
quiver3(x, y, z,u, v, w, 4, "Color", "r")
view(110,20)

%%Task10
figure("Name", "Task10");
[x,y] = meshgrid(-1:0.1:1);
a = 1;
b = 1;
c = 1;
z = ((x.^2 / a^2 + y.^2 / b^2+ 1)* c^2).^(0.5); 
surf(x,y,z) 
hold on; 
surf(x,y,-z) 
[u,v,w] = surfnorm(x, y, z); 
quiver3(x, y, z, u, v, w, 4, "Color", "r") 
quiver3(x, y, -z, u, v, w, 4, "Color", "r")

%%Task11
figure("Name", "Task11");
hold on
grid on
u = (0:0.1:3)';
v = 0:0.1:3;
x = cos(u) * cos(v);
y = sin(u) * sin(v);
z = u * v;
surf(x,y,z)
[u,v,w] = surfnorm(x,y,z);
quiver3(x, y, z, u, v, w, 2, "Color", "r") 
view(110,20)

%%Task12
figure("Name", "Task12");
xL = 1;
xR = 3;
yL = -1;
yR = 1;
zL = 0;
zR = 2;
[x, y, z] = meshgrid(xL:0.05:xR, yL:0.05:yR, zL:0.05:zR);
u = x./sqrt(x.^2 + y.^2 + z.^2);
v = y./sqrt(x.^2 + y.^2 + z.^2);
w = z./sqrt(x.^2 + y.^2 + z.^2);
[Cx, Cy, Cz] = meshgrid(xL:(xR - xL) / 3:xR, yL:(yR - yL) / 3:yR, zL:(zR - zL) / 3:zR);
hC = coneplot(x, y, z, u, v, w, Cx, Cy, Cz, 4);
set(hC, "FaceColor", "g", "EdgeColor", "none");
axis tight
view(31, 28)
light
xlabel("X")
ylabel("Y")
zlabel("Z")
