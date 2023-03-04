%% Task 1
disp ("Task 1")
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
[U, S, V] = svd(A);
disp("Решение методом сингулрного разложения:")
x = U * S^(-1) * V' * b

%% Task 2
disp ("Task 2")
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
R = chol(A);
y = R' \ b;
disp("Решение методом Холецкого")
x = R \ y

%% Task 3
disp ("Task 3")
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
tau = 0.1;
x = [0;0;0];
n = 250;
for i = 1:n
    r = b - A * x;
    x = x + r * tau;
end
disp("Решение методом Ричардсона")
disp(x)

%% Task 4
disp("Метод простой итеррации")
A = [6 4 0; 1 3 1; 1 1 3];
b = [16; 4; 0];
x0 = [0; 0; 0];
n = 2000;
eps = 0.0001;

for i = 1:length(b)
    for j = 1:length(b)
        beta(i) = b(i) / A(i,i);
        if(i == j)
            newa(i,j) = 0;
        else
            newa(i,j) = -A(i,j) / A(i,i);
        end
    end
end
x1 = x0;
ncount = 0;
beta = beta';
while true
    ncount = ncount + 1;
    x1 = beta + newa * x0;
    max = abs(x0(1) - x1(1));
    for i = 2:length(x0)
        if abs(x0(i) - x1(i)) > max
            max = abs(x0(i) - x1(i));
        end
    end
    if max < eps || ncount > n
        x = x1;
        x
        break
    else
        x0 = x1;
    end
end

%% Task 5
disp("Метод Гаусса-Зейделя")
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
x0 = [0; 0; 0];
n = 2000;
% eps из презентации
eps = 0.0001;
F = A' * A;
H = A' * b;
for i = 1:length(b) 
    for j = 1:length(b)
        beta(i) = H(i) / F(i,i);
        if (i == j) 
            newa(i,j) = 0;
        else
            newa(i,j) = -F(i,j) / F(i,i);
        end
    end
end
x1 = x0;
ncount = 0;
beta = beta';
while true
    ncount = ncount + 1;
    for i = 1:length(b) 
        s = 0;
        for j = 1:length(b)
            s = s + newa(i,j) * x1(j);
        end
        x1(i) = beta(i) + s;
    end
    max = abs(x0(1) - x1(1));
    for i = 2:length(x0) 
        if abs(x0(i) - x1(i)) > max
            max = abs(x0(i) - x1(i));
        end
    end
    if max < eps || ncount > n 
        x = x1;
        x
        break;
    else
        x0=x1;
    end
end

%% Task 6
disp("Метод последовательной верхней релаксации")
A = [1 1 1; 1 3 1; 1 1 3];
b = [2; 4; 0];
x0 = [0; 0; 0];
n = 45;
eps = 0.00001;
F = A' * A;
H = A' * b;
w = 1.4;
for i = 1:length(b) 
    for j = 1:length(b) 
        beta(i) = H(i) / F(i,i);
        if i == j
            newa(i,j) = 0;
        else
            newa(i,j) = -F(i,j) / F(i,i);
        end
    end
end
x1 = x0;
ncount = 0;
beta = beta';
while true
    ncount = ncount + 1;
    for i = 1:length(b) 
        s = 0;
        for j = 1:length(b) 
            s = s + newa(i,j) * x1(j);
        end
        x1(i) = beta(i) + s + (w - 1) * (beta(i) + s - x0(i));
    end
    max = abs(x0(1) - x1(1));
    for i = 2:length(x0) 
        if abs(x0(i) - x1(i)) > max
            max = abs(x0(i) - x1(i));
        end
    end
    if max < eps || ncount > n 
        x = x1;
        x
        break;
    else
        x0 = x1;
    end
end

%% Task 7
disp("Метод сопряжённых градиентов")
A = [1 1 1; 1 3 1; 1 1 3]; 
b = [2; 4; 0]; 
n = 45; 
eps = 0.00001; 
x = b;
flag = true; 
while true 
    R = A * x - b; 
    M = dot(R, A * A'* R) / dot(A * A'*R, A * A'*R); 
    x = x - M * A'* R; 
    if max(abs(R)) < eps 
        x 
        break 
    end 
end
