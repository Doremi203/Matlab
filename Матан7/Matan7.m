%% Task 1
disp("Task 1")
f1 = @(x) (sin(x)-(x.^3).*cos(x));
quad(f1, -4, 0, 1.0e-05)

%% Task 2
disp("Task 2")
f2 = @(x) (x.^3+1);
integral(f2, 2, 5)

%% Task 3
disp("Task 3")
f3 = @(x,y)(exp(-x).*sin(y));
dblquad(f3, -pi, pi, 0, 3)
integral2(f3, -pi, pi, 0, 3)

%% Task 4
disp("Task 4")
figure;
z = @(x, y) (sin(x).*sin(y).*(1-x.^2).*x.*(1-y));
integral2(z, -2, 2, -2, 2)
[X, Y] = meshgrid(-2:0.01:2);
Z = (sin(X).*cos(Y).*(1-Y.^2).*X.*(1-X));
surf(X, Y, Z)
view(0,2)

%% Task 5
disp("Task 5")
f5 = @(x,y,z) (exp(-x).*sin(y).*cos(z));
triplequad(f5, -pi, pi, -2*pi, pi, 0, 2)
integral3(f5, -pi, pi, -2*pi, pi, 0, 2)

%% Task 6
disp("Task 6")
f6 = @(x,y,z) (exp(x).*(sin(y)).^2+exp(-x).*(cos(y)).^2+sin(y).*cos(x).*z);
integral3(f6, -2*pi, 2*pi, -2*pi, 2*pi, -1, 1)

%% Task 7
disp("Task 7")
f7 = @(x) (1./x);
quad(f7, 0, 1)
quadl(f7, 0, 1)
quadgk(f7, 0, 1)

%% Task 8
disp("Task 8")
a = 20;
b = 7;
f8 = @(x,y)((a.*cos(x).*(x.^2)+b.*sin(y).*(y.^2)));
integral2(f8,-2,2,-2,2)

%% Task 9
disp("Task 9")
f9 = inline('a*(x.^2)+x+1','x', 'a');
a = 3;
quad(f9, 0, 10, 1.0e-05, 1, a)

%% Task 10
disp("Task 10")
f10 = @(y) (quad(@(x)(exp(x).*(sin(x)-cos(x))), 0, y, 1.0e-09));
figure;
hold on;
grid on;
fplot(f10, [0,1.5*pi])

%% Task 11
disp("Task 11")
figure;
grid on;
hold on;
f11 = @(x) (cos(x-sqrt(2)).*exp(2.*sin(x))-1);
fplot(f11, [0 4]) 
x1 = fzero(f11, 1);
x2 = fzero(f11, 3);
integral(f11, x1, x2)

%% Task 12
disp("Task 12")
figure;
grid on;
hold on;
f12 = @(x) (sin(x)-(x.^2).*(cos(x)));

fplot(f12, [-5 0]) 

locmin = fminbnd(f12, -2, 0) 

f12max = @(x) ((sin(x)-(x.^2).*(cos(x))) .* -1); 
locmax = fminbnd(f12max, -5, -3.5) 

integral(f12, locmax, locmin)
