%% Task 1
disp("Task 1")
x = 0:0.05:5;
y = myfun1(x);
plot(x,y)

%% Task 2
disp("Task 2")
x = 0:0.1:5;
y = myfun1(x);
figure 
plot(x,y)
fplot(@myfun1, [0 5])
lookfor myfun1
help myfun1

%% Task 3
disp("Task 3")
a = input("Введите вектор:");
x = suma(a)

%% Task 4
disp("Task 4")
figure
grid on
fplot(@myfun2, [-5 5])
x1 = fzero(@myfun2, -4.8)
x2 = fzero(@myfun2, -1.9)
x3 = fzero(@myfun2, 0)
x4 = fzero(@myfun2, 4.7)

%% Task 5
disp("Task 5")
polynom = [1 0 0 0 0 3 1 -10 -1 1024];
r = roots(polynom)
polyval(polynom, r)

%% Task 6
disp("Task 6")
figure;
grid on;
hold on;
syms x;
func6 = inline('exp(x.^2) + sin(3 * pi * x)');

min1 = fminbnd(func6, -0.9, -0.6) 
min2 = fminbnd(func6, -0.4, 0)
min3 = fminbnd(func6, 0.4, 0.7)

fplot(func6(x), [-1 1])

%% Task 7
disp("Task 7")
f7 = @(x)x.^2+1;
figure
fplot(f7(x), [-1.5 1.5])
x1 = fminbnd(f7, -1, 1)

%% Task 8
disp("Task 8")
figure;
grid on;
hold on;
[X,Y] = meshgrid(0:0.01:2);
Z = sin(pi*X).*sin(pi*Y);
[C, H] = contour(X, Y, Z, [-0.96, -0.9, -0.8, -0.5, -0.1, 0.1, 0.5, 0.8, 0.9, 0.96]);
clabel(C, H)

[Min1, fmin1] = fminsearch(@myfun8, [1.3, 0.7])
[Min2, fmin2] = fminsearch(@myfun8, [0.7, 1.5])

[Max1, fmax1] = fminsearch(@myfun8_2, [0.4, 0.6])
[Max2, fmax2] = fminsearch(@myfun8_2, [0.7, 1.5])

figure;
surf(X,Y,Z) 

%% Functions
function f = myfun2(x)
f = sin(x) - (x.^2).*cos(x);
end
