%% Task 1
disp ("Task 1")
f = str2sym('1/(1 + x)');
tf = taylor(f);
pretty(tf)

%% Task 2
disp ("Task 2")
syms y x;
f = str2sym('1/(x + y)');

disp ("Разложение по х")
tf = taylor(f, x, 'Order', 7);
pretty(tf)

disp ("Разложение по y")
tf = taylor(f, y, 'Order', 7);
pretty(tf)

%% Task 3
disp("Task 3")
syms x;
f = str2sym('x * sin(x)');
tf = taylor(f, x, 2, 'Order', 10);
pretty(tf)

%% Task 4
disp("Task 4")

syms k;
f = (-1)^k/k^2;
sum1 = symsum(f, k, 1, Inf) 

syms k x;
f = (-1)^(k) * x^(2 * k + 1) / factorial(2 * k + 1);
sum2 = symsum(f, k, 0, Inf)

%% Task 5
disp("Task 5")
syms n;
f = (1 / 2) * (1 - (1 / 3)^n);
l = limit(f, n, inf)
if (l == 0)
    disp("Ряд сходится")
else
    disp("Ряд расходится")
end
disp("Сумма:")
symsum(f, n, 0, Inf)

%% Task 6
disp("Task 6")
f1 = myFun(@(n) ((0.3).^n), 100)
f2 = myFun(@(n) ((1.5).^n), 100)
f3 = myFun(@(n) (1./n), 100)
f4 = myFun(@(n) (1./sqrt(n)), 100)
f5 = myFun(@(n) (1./(n.^2)), 100)
f6 = myFun(@(n) (1./(n.^2+2.*n)), 100)

function [sumvalue] = myFun(f,count)
    n = 1:count;
    figure;
    grid on;
    hold on;
    plot(n, f(n), '.', 'Color', 'b')
    sumvalue = 0;
    for i = 1:count
        sumvalue = sumvalue + f(i);
        plot(i, sumvalue,'.', 'Color', 'r')
    end
end
