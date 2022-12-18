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
pie3([25 10 20 30 15],[0 1 0 0 0])
view(15,45)

%%Task4
figure("Name","Task4");
subplot(1,2,1);
hold on
grid on
x = 0:0.01:1;
y = exp(-x).*(sin(x) + 0.1 * sin(100 * pi * x));
plot(x,y, "Color", "r")

subplot(1,2,2);
hold on
grid on
step = 1/99;
x = 0:step:1;
y = exp(-x).*(sin(x) + 0.1 * sin(100 * pi * x));
plot(x,y, "Color", "g")

%%Task5
figure("Name","Task5");
hold on, grid on;

subplot(1,3,1)
x=0:0.01:10;
f=log(2*x);
g=log(x).*sin(2*x);
loglog(x,f,'green')
hold on;
loglog(x,g,'red')
legend('f(x)','g(x)','Location','northwest')
xlabel('LogX');
ylabel('LogY');
title('LogLog')
hold off;

subplot(1,3,2)
semilogx(x,f,'green')
hold on;
semilogx(x,g,'red')
legend('f(x)','g(x)','Location','northwest')
xlabel('LogX');
ylabel('Y');
title('SemiLogX')
hold off;

subplot(1,3,3)
semilogy(x,f,'green')
hold on;
semilogy(x,g,'red')
hold off;
legend('f(x)','g(x)','Location','northwest')
xlabel('X');
ylabel('LogY');
title('SemiLogY')
