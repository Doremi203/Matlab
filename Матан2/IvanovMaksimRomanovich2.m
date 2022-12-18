%%Task1
[x1,fval1]=fsolve(@Main1,[1,1],optimset("Display","iter"));
[x2,fval2]=fsolve(@Main2,[1,1,0],optimset("Display","iter"));

%%Task2
disp("Task2")
syms x;
limit((10 + x) ^ (1 / x), x, 0, "left")
limit((10 + x) ^ (1 / x), x, 0, "right")

%%Task3
disp("Task3")
syms x deltaX;
diff(atan(x), x, 1)
limit((atan(x + deltaX) - atan(x)) / deltaX, deltaX, 0)

%%Task4
disp ("Task4")
syms x;
limit((9 * x^2 - 1) / (x + 1/3), x, -1/3)

%%Task5
disp ("Task5")
ff = diff((3 * cos(5 * x ^ 2))^3, x, 1);
disp(ff)

%%Task6
disp("Task6")
syms x y z;

disp("F1")
f1 = sin(x + 2 * y) + 2 * sqrt(x * y * z);

disp("По X")
diff(f1,x,2)

disp("По Y")
diff(f1,y,2)

disp("По Z")
diff(f1,z,2)

disp("Смешанная по X Y")
ff1 = diff(f1,x,1);
diff(ff1,y,1)

disp("Смешанная по X Z")
ff1 = diff(f1,x,1);
diff(ff1,z,1)

disp("Смешанная по Y X")
ff1 = diff(f1,y,1);
diff(ff1,x,1)

disp("Смешанная по Y Z")
ff1 = diff(f1,y,1);
diff(ff1,z,1)

disp("Смешанная по Z X")
ff1 = diff(f1,z,1);
diff(ff1,x,1)

disp("Смешанная по Z Y")
ff1 = diff(f1,y,1);
diff(ff1,z,1)


disp("F2")
f2 = log( 3 - x^2) + x * y^2 * z;

disp("По X")
diff(f2,x,2)

disp("По Y")
diff(f2,y,2)

disp("По Z")
diff(f2,z,2)

disp("Смешанная по X Y")
ff2 = diff(f2,x,1);
diff(ff2,y,1)

disp("Смешанная по X Z")
ff2 = diff(f2,x,1);
diff(ff2,z,1)

disp("Смешанная по Y X")
ff2 = diff(f2,y,1);
diff(ff2,x,1)

disp("Смешанная по Y Z")
ff2 = diff(f2,y,1);
diff(ff2,z,1)

disp("Смешанная по Z X")
ff2 = diff(f2,z,1);
diff(ff2,x,1)

disp("Смешанная по Z Y")
ff2 = diff(f2,y,1);
diff(ff2,z,1)

disp("F3")
f3 = x^2 - atan( y + z^3);

disp("По X")
diff(f3,x,2)

disp("По Y")
diff(f3,y,2)

disp("По Z")
diff(f3,z,2)

disp("Смешанная по X Y")
ff3 = diff(f3,x,1);
diff(ff3,y,1)

disp("Смешанная по X Z")
ff3 = diff(f3,x,1);
diff(ff3,z,1)

disp("Смешанная по Y X")
ff3 = diff(f3,y,1);
diff(ff3,x,1)

disp("Смешанная по Y Z")
ff3 = diff(f3,y,1);
diff(ff3,z,1)

disp("Смешанная по Z X")
ff3 = diff(f3,z,1);
diff(ff3,x,1)

disp("Смешанная по Z Y")
ff3 = diff(f3,y,1);
diff(ff3,z,1)


disp("F4")
f4 = x^3 * y^2 * z + 3 * x - 5 * y + z + 2;

disp("По X")
diff(f4,x,2)

disp("По Y")
diff(f4,y,2)

disp("По Z")
diff(f4,z,2)

disp("Смешанная по X Y")
ff4 = diff(f4,x,1);
diff(ff4,y,1)

disp("Смешанная по X Z")
ff4 = diff(f4,x,1);
diff(ff4,z,1)

disp("Смешанная по Y X")
ff4 = diff(f4,y,1);
diff(ff4,x,1)

disp("Смешанная по Y Z")
ff4 = diff(f4,y,1);
diff(ff4,z,1)

disp("Смешанная по Z X")
ff4 = diff(f4,z,1);
diff(ff4,x,1)

disp("Смешанная по Z Y")
ff4 = diff(f4,y,1);
diff(ff4,z,1)

%%Task7
disp("Task7")
syms x
limit(sin(x)/x,x,0)
limit((1-exp(-x))/x,x,Inf)
limit((1-x)/log(x),x,1)

%%Task8
disp("Task8")
syms x;
f = (x^2) * cos( 2 * x);
diff(f,x,6)

%%Task9
disp("Task9")
syms x;
limit(1 - exp(-x)/x, x, Inf)

%%Task10
syms x a n;
y = exp(-a * x^5) + log(a^n + x^a) - (a * n) / x^3;
diff(y,x,2)

%%Functions
function F = Main1( x )
    F(1)=x(1)^2-2*x(2)^2+1;
    F(2)=-3*x(1)^2+x(2)^2+2;
    F(3)=x(1)^3+x(2)^3-2;
end
function F2 = Main2( x )
    F2(1)=x(1)^2-2*x(2)^2+x(3)+1;
    F2(2)=-3*x(1)^2+x(2)^2+x(3)+2;
end