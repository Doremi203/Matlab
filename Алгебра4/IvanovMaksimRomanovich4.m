%%Task1
figure("Name","Task1")
disp ("Task1")
a = [2 3 4];
b = [3 5 2];
c = [1 1 1];
disp ("2 вектора")
(a + b == b + a)
isequal(a + b, b + a)

disp ("3 вектора")
((a + b) + c == a + (b + c))
isequal((a + b) + c, a + (b + c))

subplot(2,2,1);
grid on
axis equal
hold on

quiver3(0, 0, 0, a(1), a(2), a(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, b(1), b(2), b(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, a(1) + b(1), a(2) + b(2), a(3) + b(3), 1, "Color", "r", "LineWidth", 2)

title("a + b")
view(120, 30);

subplot(2,2,2);
grid on
axis equal
hold on

quiver3(0, 0, 0, a(1), a(2), a(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, b(1), b(2), b(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, b(1) + a(1), b(2) + a(2), b(3) + a(3), 1, "Color", "r", "LineWidth", 2)

title("b + a")
view(120, 30);

subplot(2, 2, 3);
grid on
axis equal
hold on

quiver3(0, 0, 0, c(1), c(2), c(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, a(1), a(2), a(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, b(1), b(2), b(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, (a(1) + b(1)) + c(1), (a(2) + b(2)) + c(2), (a(3) + b(3)) + c(3), 1, "Color", "r", "LineWidth", 2)
                 
title("(a + b) + c")
view(120, 30);
            
subplot(2, 2, 4);
grid on
axis equal
hold on

quiver3(0, 0, 0, c(1), c(2), c(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, a(1), a(2), a(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, b(1), b(2), b(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, a(1) + (b(1) + c(1)), a(2) + (b(2) + c(2)), a(3) + (b(3) + c(3)), 1, "Color", "r", "LineWidth", 2)
                       
title("a + (b + c)")
view(120, 30);

%%Task2
disp ("Task2")
a = [4 2 3];
b = [1 5 2];
A = 4;
B = 3;

isequal(A * (a + b), A * a + A * b)
isequal((A + B) * a , A * a + B * a)
isequal(A * (B * a), (A * B) * a)

%%Task3
disp ("Task3")
figure("Name","Task3")
subplot(1,2,1)
grid on
axis equal
hold on

a = [3 4 5];
lena = sqrt(sum(a.^2));
lenaNorm = norm(a);
a0 = a / lena;
isequal(norm(a0),1)
quiver3(0, 0, 0, a(1), a(2), a(3), 1, "Color", "b", "LineWidth", 2)
quiver3(0, 0, 0, a0(1), a0(2), a0(3), 1, "Color", "g", "LineWidth", 2)

subplot(1,2,2)
grid on
axis equal
hold on
b = [4 2];
lenb = sqrt(sum(b.^2));
lenbNorm = norm(b);
b0 = b / lenb;
isequal(norm(b0),1)
quiver(0, 0, b(1), b(2), 1, "Color", "b", "LineWidth", 2)
quiver(0, 0, b0(1), b0(2), 1, "Color", "g", "LineWidth", 2)

%%Task4
disp ("Task4")
a = [3 4 5];
cosa = a./norm(a);
angle1 = (a./norm(a)) * 180/pi;
s1 = sum(cosa.^2);
disp(angle1)
disp(s1)

b = [4 2];
cosb = b./norm(b);
angle2 = (b./norm(b)) * 180/pi;
s2 = sum(cosb.^2);
disp(angle1)
disp(s2)

%%Task5
disp ("Task5")
figure("Name","Task5")
view(120,30)
grid on
axis equal
hold on

a = [1 -2 0];
b = [0 1 1];
c = [1 2 2];
if (dot(cross(a,b),c) == 0)
    disp("Компланарны")
else
    disp("Некомпланарны")
end

quiver3(0,0,0,0,0,10,1, "Color","k","lineWidth",4);
quiver3(0,0,0,0,10,0,1, "Color","k","lineWidth",4);
quiver3(0,0,0,10,0,0,1, "Color","k","lineWidth",4);

line([0,0,0; a(1),b(1),c(1)], [0,0,0; a(2),b(2),c(2)], [0,0,0; a(3),b(3),c(3)])
plot3(a(1),a(2),a(3), '>', 'LineWidth', 2) 
plot3(b(1),b(2),b(3), '^', 'LineWidth', 2) 
plot3(c(1),c(2),c(3), '^', 'LineWidth', 2)

quiver3(0,0,0,1/norm(a),-2/norm(a),0/norm(a),1, "Color","b","LineWidth",4)
quiver3(0,0,0,0/norm(b),1/norm(b),1/norm(b),1, "Color","r","LineWidth",4)
quiver3(0,0,0,1/norm(c),2/norm(c),2/norm(c),1, "Color","r","LineWidth",4)

%%Task6 
disp ("Task6")
figure("Name", "Task6")
grid on
axis equal
hold on

p = [2 -3]; 
q = [1 2]; 
s = [9 4];

if (p(1)/p(2) == q(1)/q(2))
    disp ("Коллинеарны")
else
    disp ("Неколлинеарны")
end

A = ([p;q]')\(s');
m = A(1,1);
n = A(2,1);

mp = p*m;
nq = q*n;

quiver(0, 0, 0, 5, 1, "Color", "k", "LineWidth", 2)
quiver(0, 0, 5, 0, 1, "Color", "k", "LineWidth", 2)

quiver(0, 0, 0, 1, 1, "Color", "k", "LineWidth", 4)
quiver(0, 0, 1, 0, 1, "Color", "k", "LineWidth", 4)

quiver(0, 0, p(1), p(2), 1, "Color", "b", "LineWidth", 4)
quiver(0, 0, q(1), q(2), 1, "Color", "b", "LineWidth", 4)
quiver(0, 0, nq(1), nq(2), 1, "Color", "r", "LineWidth", 2)
quiver(0, 0, mp(1), mp(2), 1, "Color", "r", "LineWidth", 2)
quiver(0, 0, s(1), s(2), 1, "Color", "g", "LineWidth", 2)

text(0,5.5,'Y');
text(5.5,0,'X');

text(1,-0.5,'i');
text(-0.5,1,'j');

text(2, 2, '\bf q');
text(2, -2, '\bf p'); 
text(5, 4, '\bf s')
text(2.5, 7.5, '\bf nq');
text(3.5, -3.5, '\bf mp');

%%Task7
figure("Name", "Task7")

subplot(2,2,1)
grid on
axis equal
hold on

a = [3 2];
b = [-2 1];
c = [4 -4];

quiver(0,0,0,10,1, "Color", "k", "LineWidth", 2)
quiver(0,0,10,0,1, "Color", "k", "LineWidth", 2)
quiver(0, 0, 0, 1, 1, "Color", "k", "LineWidth", 4)
quiver(0, 0, 1, 0, 1, "Color", "k", "LineWidth", 4)

text(1,-0.5,'i');
text(-0.5,1,'j');

text(10,0,"X");
text(0.5,10,"Y");

quiver(0,0,a(1),a(2),1)
quiver(0,0,b(1),b(2),1)
quiver(0,0,c(1),c(2),1)

text(1.5,2,"\bfa")
text(-2,0.5,"\bfb")
text(2,-1.5,"\bfc")

subplot(2,2,2);
hold on
axis equal
grid on

A = ([a;b])'\(c)';

quiver(0,0,0,6,1, "Color", "k", "LineWidth", 2)
quiver(0,0,6,0,1, "Color", "k", "LineWidth", 2)

text(6,0,"X");
text(0.5,6,"Y");

quiver(0, 0, 0, 1, 1, "Color", "k", "LineWidth", 4)
quiver(0, 0, 1, 0, 1, "Color", "k", "LineWidth", 4)

text(1,-0.5,"i");
text(-0.5,1,"j");

quiver(0,0,a(1),a(2),1,"b","LineWidth",2)
quiver(0,0,b(1),b(2),1,"b","LineWidth",2)
quiver(0,0,c(1),c(2),1,"r","LineWidth",2)

text(1.5,1,"\bfa")
text(-1,0.5,"\bfb")
text(2,-2,"\bfc")

quiver(0,0,3*A(1,1),2*A(1,1),1)
quiver(0,0,-2*A(2,1),A(2,1),1)

text(1.5*A(1,1),A(1,1),"m\bfa");
text(-A(2,1),0.5*A(2,1),"n\bfb");
line([3*A(1,1) 4;4 -2*A(2,1)],[2*A(1,1) -4;-4 A(2,1)],"Color","black","LineStyle","--")

subplot(2,2,3);
hold on
axis equal
grid on

A = ([a;c])'\(b)';

quiver(0,0,0,6,1, "Color", "k", "LineWidth", 2)
quiver(0,0,6,0,1, "Color", "k", "LineWidth", 2)

text(6,0,"X");
text(0.5,6,"Y");

quiver(0, 0, 0, 1, 1, "Color", "k", "LineWidth", 4)
quiver(0, 0, 1, 0, 1, "Color", "k", "LineWidth", 4)

text(1,-0.5,"i");
text(-0.5,1,"j");

quiver(0,0,a(1),a(2),1,"b","LineWidth",2)
quiver(0,0,b(1),b(2),1,"r","LineWidth",2)
quiver(0,0,c(1),c(2),1,"b","LineWidth",2)

text(1.5,1,"\bfa")
text(-1,0.5,"\bfb")
text(2,-2,"\bfc")

quiver(0,0,3*A(1,1),2*A(1,1),1)
quiver(0,0,4*A(2,1),-4*A(2,1),1)

text(1.5*A(1,1),A(1,1),"m\bfa");
text(2*A(2,1),-2*A(2,1),"n\bfc");
line([3*A(1,1) -2;-2 4*A(2,1)],[2*A(1,1) 1;1 -4*A(2,1)],"Color","k","LineStyle","--")


subplot(2,2,4);
hold on
axis equal
grid on
A=([b;c])'\(a)';
quiver(0,0,0,6,1, "Color", "k", "LineWidth", 2)
quiver(0,0,6,0,1, "Color", "k", "LineWidth", 2)
text(6,0,"X");
text(0.5,6,"Y");
quiver(0, 0, 0, 1, 1, "Color", "k", "LineWidth", 4)
quiver(0, 0, 1, 0, 1, "Color", "k", "LineWidth", 4)
text(1,-0.5,"i");
text(-0.5,1,"j");
quiver(0,0,a(1),a(2),1, "Color", "r","LineWidth",2)
quiver(0,0,b(1),b(2),1, "Color", "b","LineWidth",2)
quiver(0,0,c(1),c(2),1, "Color", "b","LineWidth",2)
text(1.5,1,"\bfa")
text(-1,0.5,"\bfb")
text(2,-2,"\bfc")
quiver(0,0,-2*A(1,1),1*A(1,1),1)
quiver(0,0,4*A(2,1),-4*A(2,1),1)
text(-1*A(1,1),0.5*A(1,1),"m\bfb");
text(2*A(2,1),-2*A(2,1),"n\bfc");
line([-2*A(1,1) 3;3 4*A(2,1)],[1*A(1,1) 2;2 -4*A(2,1)],"Color","k","LineStyle","--")

%%Task8
figure("Name","Task8");
a = [2 1 0];
b = [1 -1 2];
c = [2 2 -1];
d = [3 7 -7];

delta = det([b;c;d]');
delta1 = det([a;c;d]');
delta2 = det([b;a;d]');
delta3 = det([b;c;a]');

A = [delta1 / delta; delta2 / delta; delta3 / delta];

subplot(1,2,1);
hold on
axis equal
grid on
view(120,30)

quiver3(0,0,0,10,0,0,1, "Color", "k", "LineWidth", 2)
quiver3(0,0,0,0,10,0,1, "Color", "k", "LineWidth", 2)
quiver3(0,0,0,0,0,10,1, "Color", "k", "LineWidth", 2)

text(10,0,0,"X");
text(0,10,0,"Y");
text(0,0,10,"Z");

quiver3(0,0,0,0,0,1,1, "Color", "k", "LineWidth", 4)
quiver3(0,0,0,1,0,0,1, "Color", "k", "LineWidth", 4)
quiver3(0,0,0,0,1,0,1, "Color", "k", "LineWidth", 4)

text(0,0.5,0,"j");
text(0.5,0,0,"i");
text(0,0,0.5,"k");

quiver3(0,0,0,a(1),a(2),a(3),1)
quiver3(0,0,0,b(1),b(2),b(3),1)
quiver3(0,0,0,c(1),c(2),c(3),1)
quiver3(0,0,0,d(1),d(2),d(3),1)

text(1, 0.7, 0,"\bfa")
text(0.6, -0.7, 1,"\bfb")
text(1,2, -0.6,"\bfc")
text(1.6, 3.3, -3.5,"\bfd")

subplot(1,2,2);
hold on
axis equal
grid on
view(120,30)

quiver3(0,0,0,10,0,0,1, "Color", "k", "LineWidth", 2)
quiver3(0,0,0,0,10,0,1, "Color", "k", "LineWidth", 2)
quiver3(0,0,0,0,0,10,1, "Color", "k", "LineWidth", 2)

text(10,0,0,"X");
text(0,10,0,"Y");
text(0,0,10,"Z");

quiver3(0,0,0,0,0,1,1, "Color", "k", "LineWidth", 4)
quiver3(0,0,0,1,0,0,1, "Color", "k", "LineWidth", 4)
quiver3(0,0,0,0,1,0,1, "Color", "k", "LineWidth", 4)

text(0,0.5,0,"j");
text(0.5,0,0,"i");
text(0,0,0.5,"k");

quiver3(0,0,0,a(1),a(2),a(3),1, "Color", "r","LineWidth",2)
quiver3(0,0,0,b(1),b(2),b(3),1, "Color", "b","LineWidth",2)
quiver3(0,0,0,c(1),c(2),c(3),1, "Color", "b","LineWidth",2)
quiver3(0,0,0,d(1),d(2),d(3),1, "Color", "b","LineWidth",2)

text(1, 0.6, 0,"\bfa")
text(0.5, -0.6, 1,"\bfb")
text(1, 1.1, -0.5,"\bfc")
text(1.5, 3.5, -3.6,"\bfd")

quiver3(0,0,0,1 * A(1,1),-1 * A(1,1),2 * A(1,1), 1)
text(0.5 * A(1,1), -0.5 * A(1,1), 1 * A(1,1), "m\bfb")
quiver3(0,0,0, 2 * A(2,1), 2 * A(2,1), -1 * A(2,1), 1);
quiver3(0,0,0, 3 * A(3,1), 7 * A(3,1), -7 * A(3,1), 1);
text(0.5 * A(1,1), -0.5 * A(1,1),1 * A(1,1), "m\bfb")
text(1 * A(2,1), 1 * A(2,1), -0.5 * A(2,1), "n\bfc")
text(1.5 * A(3,1), 3.5 * A(3,1), -3.5 * A(3,1), "p\bfd")

%%Task9
a = [-1 2 0];
b = [0 1 2];
c = [1 2 2];
alpha = 4;

if(isequal(dot(a,b),dot(b,a)))
    disp("Свойство 1 выполняется")
else
    disp("Свойство 1 не выполняется")
end
if(isequal(dot(a + b,c),dot(a,c) + dot(b,c)))
    disp("Свойство 2 выполняется")
else
    disp("Свойство 2 не выполняется")
end
if(isequal(dot(alpha * a,b),alpha * dot(a,b)))
    disp("Свойство 3 выполняется")
else
    disp("Свойство 3 не выполняется")
end
if(isequal(dot(a,b + c),dot(a,b) + dot(a,c)))
    disp("Свойство 2' выполняется")
else
    disp("Свойство 2' не выполняется")
end
if(isequal(dot(a,alpha * b),alpha * dot(a,b)))
    disp("Свойство 3' выполняется")
else
    disp("Свойство 3' не выполняется")
end
if (isequal(a,[0 0 0]) == false)
    if(dot(a,a) > 0)
        disp("Свойство 4 выполняется для ненулевого вектора")
    end
else
    a=[0,0,0];
    if(isequal(dot(a,a),0))
        disp("Свойство 4 выполняется для нулевого вектора")
    end
end

%%Task10
a = [1 -2 0];
b = [0 1 2];
c = [1 2 2];

if(isequal(dot(a,b) * c,a * dot(b,c)) == true)
    disp("Равенство 2 выполняется")
else
    disp("Равенство 2 не выполняется")
end
if(isequal(dot(a,b),dot(a,c)) && (isequal(a,[0 0 0]) == false) && isequal(b,c))
    disp("Следствие 3 выполняется")
else
    disp("Следствие 3 не выполняется")
end
if(isequal(dot(a,b) * b,a * dot(b,b)) == true)
    disp("Равенство 4 выполняется")
else
    disp("Равенство 4 не выполняется")
end