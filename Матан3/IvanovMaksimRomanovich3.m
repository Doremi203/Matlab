%%Task1
figure("Name","Task1");
hold on
grid on
x = -2:0.01:2;
y = exp(-x).*sin(10*x);
plot(x,y)

%%Task2
figure("Name","Task2");
subplot(1,2,1);
hold on
grid on
x = 0:0.001:5;
y = exp(-x).*sin(10*x);
area(x,y)
comet(x,y)

subplot(1,2,2);
hold on
grid on
z = x;
view(-58,-53);
comet3(x,y,z,0.9)

%%Task3
figure("Name","Task3");
pie3([25 10 20 35 10],[0 1 0 0 1])
view(15,45)

%%Task4
figure("Name","Task4");
subplot(1,2,1);
hold on
grid on
x = 0:0.01:1;
y = exp(-x).*(sin(x) + 0.1 * sin(100 * pi * x));
plot(x, y, "Color", "r")

subplot(1,2,2);
hold on
grid on
step = 1/99;
x = 0:step:1;
y = exp(-x).*(sin(x) + 0.1 * sin(100 * pi * x));
plot(x, y, "Color", "g")

%%Task5
figure("Name","Task5");
hold on, grid on;

subplot(1,3,1)
x = 0:0.01:10;
f = log(2 * x);
g = log(x).*sin(2 * x);

loglog(x, f, "Color", "g")
hold on;
loglog(x, g, "Color", "r")
legend("f(x)", "g(x)", "Location", "northwest")
xlabel("LogX");
ylabel("LogY");
title("LogXLogY")
hold off;

subplot(1,3,2)
semilogx(x, f, "Color", "g")
hold on;
semilogx(x, g, "Color", "r")
legend("f(x)", "g(x)", "Location", "northwest")
xlabel("LogX");
ylabel("Y");
title("SemiLogX")
hold off;

subplot(1,3,3)
semilogy(x, f, "Color", "g")
hold on;
semilogy(x, g, "Color", "r")
hold off;
legend("f(x)", "g(x)", "Location", "northwest")
xlabel("X");
ylabel("LogY");
title("SemiLogY")

%%Task6
figure("Name","Task6");
hold on
grid on
axis equal
t = -pi:0.01:pi;
x = 2 * sin(t);
y = 4 * cos(t);
plot(x,y)

%%Task7
figure("Name", "Task7");
hold on
grid on
[x,y] = meshgrid(-3:0.05:3, -3:0.05:3);
z = 4 * sin(2 * pi * x).*cos(1.5 * pi * y).*(1 - y.^2).*x.*(1 - x);
mesh(x, y, z);
view(115,25)
hidden off;

%%Task8
figure("Name", "Task8");
hold on
grid on
[x,y] = meshgrid(-3:0.05:3, -3:0.05:3);
z = 4 * sin(2 * pi * x).*cos(1.5 * pi * y).*(1-y.^2).*x.*(1 - x);
contour3(x, y, z, -3:0.01:3)
colorbar
view(110, 20)

%%Task9
figure("Name","Task9");
hold on
grid on
[x,y] = meshgrid(-3:0.05:3, -3:0.05:3);
z = 4 * sin(2 * pi * x).*cos(1.5 * pi * y).*(1 - y.^2).*x.*(1 - x);
colormap("parula");
surfl(x, y, z,[-60, 45])
view(110,20)

%%Task10
figure("Name","Task10");
hold on
grid on
[x,y] = meshgrid(-1:0.1:1, -1:0.1:1);
z = (sin(x).^2 + cos(y).^2).^(x.* y);

subplot(2, 2, 1)
mesh(x, y, z)

subplot(2, 2, 2)
surf(x, y, z)
shading flat;

subplot(2, 2, 3)
contour3(x, y, z, -3:0.01:3)

subplot(2, 2, 4)
surfl(x, y, z, [130,40])
