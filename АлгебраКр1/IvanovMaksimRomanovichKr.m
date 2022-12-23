%%1
disp("Задание 1")
A = rand(7,5)
x = size(A,1)
y = size(A,2)

%%2
disp("Задание 2")
Mas1 = [1 2 3];
Mas2 = [4 5 6];
Mas3 = Mas1.*Mas2

%%3
disp("Задание 3")
a = [1 3 2 7; 4 0 6 7; 35 42 2 11];
b = [0 30 3 7;4 13 6 7;3 40 24 1];
c = 2*a + 10*b

%%4
disp("Задание 4")
A = [7 1 2 4 3; 6 2 0 1 6; 4 1 1 2 2; 5 3 -3 4 -18; -3 -5 8 -4 39];
D = rref(A);
x = D(:,5)

%%5
disp("Задание 5")
a = [1 3 2 7; 4 0 6 7; 35 42 2 11];
b = [30; 3; 7];
x = a\b

%%6
figure("Name","Task6")
hold on
axis equal
grid on
subplot(1,2,1)
A = [-5 -5];
B = [1 2];
C = [5 3];
BA = A - B;
BC = C - B;
D = A + BC;
line([A(1),B(1),C(1),D(1);B(1),C(1),D(1),A(1)],[A(2),B(2),C(2),D(2);B(2),C(2),D(2),A(2)],"color","k","LineWidth",1)
text(A(1),A(2),"A")
text(B(1),B(2),"B")
text(C(1),C(2),"C")
text(D(1),D(2),"D")

subplot(1,2,2)
hold on
axis equal
grid on
BD = BA + BC;
quiver(B(1),B(2),BA(1),BA(2),1,"blue")
quiver(B(1),B(2),BC(1),BC(2),1,"blue")
quiver(B(1),B(2),BD(1),BD(2),1,"red")
text(A(1),A(2),"A")
text(B(1),B(2),"B")
text(C(1),C(2),"C")
text(D(1),D(2),"D")
text((B(1) + A(1)) * 0.5,(B(2) + A(2)) * 0.5,"BA")
text((B(1) + C(1)) * 0.5,(B(2) + C(2)) * 0.5,"BC")
text((B(1) + D(1)) * 0.5,(B(2) + D(2)) * 0.5,"BA + BC")

%%7
figure("Name","Task7")
hold on
axis equal
grid on
A = [-5 -5];
B = [1 2];
C = [5 3];
AB = B - A;
BC = C - B;
AC = C - A;
if AB + BC == AC
    quiver(A(1),A(2),AB(1),AB(2),1,"Color","b","LineWidth",5)
    quiver(B(1),B(2),BC(1),BC(2),1,"Color","b","LineWidth",5)
    quiver(A(1),A(2),AC(1),AC(2),1,"Color","r","LineWidth",5)
    text(-5,-5,'\bfA')
    text(1,2,'\bfB')
    text(5,3,'\bfC')
    text((A(1) + B(1)) * 0.5,(A(2) + B(2)) * 0.5,"AB")
    text((B(1) + C(1)) * 0.5,(B(2) + C(2)) * 0.5,"BC")
    text((A(1) + C(1)) * 0.5,(A(2) + C(2)) * 0.5,"AC")
end

%%8
disp("Задание 8")
a = [1,-2,3];
b = [0,4,2];
c = [5,6,7];
isequal((dot(a,b)*c),(a*dot(b,c)))
if(isequal(a,0) == false && isequal(dot(a,b),dot(a,c)))
    isequal(b,c)
end
isequal((dot(a,b)*b),(a*dot(b,b)))

%%9
figure("Name","Task9")
disp("Задание 9")
 a = [4;3;5];
 b = [3;2;1];
 c = [3;3;3];

((a + b) + c == a + (b + c))
isequal((a + b) + c, a + (b + c))

subplot(1, 2, 1);
grid on
axis equal
hold on

quiver3(0, 0, 0, c(1), c(2), c(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, a(1), a(2), a(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, b(1), b(2), b(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, (a(1) + b(1)) + c(1), (a(2) + b(2)) + c(2), (a(3) + b(3)) + c(3), 1, "Color", "r", "LineWidth", 2)

text(a(1) * 0.5,a(2) * 0.5,a(3)*0.5,"\bfa")
text(b(1) * 0.5,b(2) * 0.5,b(3)*0.5,"\bfb")
text(c(1) * 0.5,c(2) * 0.5,c(3)*0.5,"\bfc")

title("(a + b) + c")
view(120, 30);
            
subplot(1, 2, 2);
grid on
axis equal
hold on

quiver3(0, 0, 0, c(1), c(2), c(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, a(1), a(2), a(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, b(1), b(2), b(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, a(1) + (b(1) + c(1)), a(2) + (b(2) + c(2)), a(3) + (b(3) + c(3)), 1, "Color", "r", "LineWidth", 2)

text(a(1) * 0.5,a(2) * 0.5,a(3)*0.5,"\bfa")
text(b(1) * 0.5,b(2) * 0.5,b(3)*0.5,"\bfb")
text(c(1) * 0.5,c(2) * 0.5,c(3)*0.5,"\bfc")

title("a + (b + c)")
view(120, 30);

%%10
disp("Задание 10")
figure("Name", "Task10")
grid on
axis equal
hold on

c = [11 15];
l1 = sqrt(c(1)*c(1) + c(2)*c(2))
l2 = norm(c)
c0 = c / l1

if (isequal(round(norm(c0)), 1))
    disp("Длина орта = 1")
end

quiver(0, 0, c(1), c(2), 1, "Color", "g", "LineWidth", 2)
quiver(0, 0, c0(1), c0(2), 1, "Color", "b", "LineWidth", 6)