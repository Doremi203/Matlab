%% Task 1
disp ("Task 1")
a = input("Введите вектор:");
disp("Вектор перевернутый:")
flippedV = fliplr(a)

%% Task 2
disp ("Task 2")
a = input("Введите вектор:");
disp("Вектор четных элементов:")
evenV = [a(mod(a, 2) == 0)] 
disp("Вектор нечетных элементов:")
oddV = [a(mod(a, 2) == 1)]

%% Task 3
disp ("Task 3")
a = input("Введите вектор:");
disp("Сумма отрицательных элементов:")
sum = sum(a(a < 0))

%% Task 4
disp ("Task 4")
a = input("Введите вектор:");
disp("Измененный вектор:")
answer(a/geomean(a) > 1.3 | a/geomean(a) < 0.7) = geomean(a)

%% Task 5
disp ("Task 5")
a = input("Введите вектор:");
disp("Измененный вектор:")
mi = min(a);
M = max(a);
a(a == mi) = M

%% Task 6
disp ("Task 6")
a = input("Введите матрицу:");
disp("Число положительных, нулевых и отрицательных элементов входной матрицы:")
answer = [length(a(a>0)); length(a(a==0)); length(a(a<0))]

%% Task 7
disp ('Задание 7')
A = [2 3 3; 4 2 3; 6 5 6];
b = [8; 7; 7];
x = A\b
disp("Число обусловлености матрицы");
cond(A)
disp("Проверка решения")
A * x == b
disp("Решение методом Гаусса")
C = [A b];
D = rref(C);
x = D(:,4)
disp("Проверка решения")
A * x == b

%% Task 8
disp ("Task 8")
t = [0; 0.1; 0.2; 0.3; 0.4; 0.5];
y = [4.25; 3.95; 3.64; 3.41; 3.21; 3.04];
A = [exp(-t) t]
x = A\y;
a = x(1)
b = x(2)
hold on
plot(t, y, "s")
syms t;
y2=@(t) a.*exp(-t)+b.*t;
fplot(y2, [0 0.5*pi])

%% Task 9
disp ("Task 9")
A = [1 2 3; 3 4 5];
b = [2;2];
disp("Решение:")
x = A\b
disp("Проверка:")
A * x

%% Task 10
disp ("Task 10")
A = [2 3 3; -2 -3 -3];
b = [8; 7];
disp("Решение уравнения:")
[X, r] = linsolve(A, b)

%% Task 11
disp ("Task 11")
A = [2 3 3; -2 -3 -3];
b = [8; 7];
[Q, R] = qr(A)
disp("Решение уравнения QR:")
X = R\(Q'*b)

%% Task 12
disp ("Task 12")
A = [2 4 5; 3 6 7; 8 5 2];

[V, D] = eig(A)
disp("Собственные числа")
m1 = D(1, 1)
m2 = D(2, 2)
m3 = D(3, 3)
disp("Собственные векторы")
v1 = V(:, 1)
v2 = V(:, 2)
v3 = V(:, 3)

if round(A*v1)==round(m1*v1)
        disp("Проверено")
end
