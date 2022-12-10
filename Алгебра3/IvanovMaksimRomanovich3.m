%%Task1
figure("Name","Task1")
grid on
axis equal
line([0;2], [0;1])
line([0;-1], [0;2])
line([-2;0], [-4;0])

%%Task2
figure("Name","Task2")
grid on
axis equal
x = [0 0; 2 2];
y = [0 2; 1 0];
line(x,y)

%%Task3
figure("Name","Task3")
grid on
axis equal
subplot(2,2,3)
x = [0 0 0; 2 2 3];
y = [0 2 2; 1 0 0];
line(x,y)

subplot(2,2,1)
line([0;2], [0;1])

subplot(2,2,2)
line([0;2], [2;0])

subplot(2,2,4)
line([0;3], [2;0])

%%Task4
figure("Name","Task4")
hold on
grid on
axis equal
quiver(0, 0, 2, 1, 1, "Color", "k", "LineWidth", 3)
quiver(0, 2, 2, -2, 1, "Color", "k", "LineWidth", 3)
quiver(0, 2, 3, -2, 1, "Color", "k", "LineWidth", 3)

%%Task5
figure("Name", "Task5")
hold on
grid on
axis equal
view(120,30)
quiver3(0, 0, 0, 1, 0, 0)
quiver3(0, 0, 0, 0, 1, 0)
quiver3(0, 0, 0, 0, 0, 1)

%%Task6
figure("Name","Task6")
hold on
grid on
axis equal
quiver(0,0,10,0,1,"LineWidth",3)
quiver(0,0,0,10,1,"LineWidth",3)

quiver(0,0,1,0,1,"Color","k","LineWidth",4)
quiver(0,0,0,1,1,"Color","k","LineWidth",4)

%%Task7
figure("Name","Task8")
hold on
grid on
axis equal
view(120,30)
quiver3(0,0,0,10,0,0,1,"LineWidth",2)
quiver3(0,0,0,0,10,0,1,"LineWidth",2)
quiver3(0,0,0,0,0,10,1,"LineWidth",2)

quiver3(0,0,0,1,0,0,1,"Color","k","LineWidth",4)
quiver3(0,0,0,0,1,0,1,"Color","k","LineWidth",4)
quiver3(0,0,0,0,0,1,1,"Color","k","LineWidth",4)

%%Task8
figure("Name","Task8")
subplot(1,2,1)
grid on
axis equal
axis([-5 5 -5 5])
line([-1;2],[3;-5])
text(2,-5,'(2,-5)')
subplot(1,2,2)
grid on
axis equal
axis([0 5 -5 1])
line([1,4;2,3],[-1,0;-3,-5])
text(2,-3,'(2,-3)')
text(3,-5,'(3,-5)')

%%Task9
figure("Name","Task9")
hold on
grid on
axis equal
A = [-2 0];
B = [1 2];
C = [1 -1];
AB = B - A;
BC = C - B;
AC = C - A;
if AB + BC == AC
    quiver(A(1),A(2),AB(1),AB(2),1,"Color","b")
    quiver(B(1),B(2),BC(1),BC(2),1,"Color","b")
    quiver(A(1),A(2),AC(1),AC(2),1,"Color","r")
    text(-2,0,'\bfA')
    text(1,2,'\bfB')
    text(1,-1,'\bfC')
end

%%Task10
figure("Name","Task10")
subplot(1,2,1)
hold on
axis equal
grid on
A = [-2 0];
B = [1 2];
C = [1 -1];
AB = B-A;
BC = C-B;
D = A + BC;
DC = C - D;
AD = D - A;
lenAB = sqrt(AB(1)*AB(1)+AB(2)*AB(2));
lenBC = sqrt(BC(1)*BC(1)+BC(2)*BC(2));
lenDC = sqrt(DC(1)*DC(1)+DC(2)*DC(2));
lenAD = sqrt(AD(1)*AD(1)+AD(2)*AD(2));
line([A(1),B(1),C(1),D(1);B(1),C(1),D(1),A(1)],[A(2),B(2),C(2),D(2);B(2),C(2),D(2),A(2)],'LineWidth',2)
text(A(1),A(2),'A')
text(B(1),B(2),'B')
text(C(1),C(2),'C')
text(D(1),D(2),'D')

if(AB(1)*DC(2) == AB(2)*DC(1))
    disp("Векторы AB и DC коллинеарны")
    if((AB(1)*DC(1) + AB(2)*DC(2)) > 0)
        disp("Векторы AB и DC сонаправлены")
        if(lenAB == lenDC)
            disp("Векторы AB и DC равны")
        end
    else
        disp("Векторы AB и DC разнонаправлены")
    end
else
    disp("Векторы AB и DC неколлинеарны")
end

if(AD(1)*BC(2) == AD(2)*BC(1))
    disp("Векторы AD и BC коллинеарны")
    if((AD(1)*BC(1) + AD(2)*BC(2)) > 0)
        disp("Векторы AD и BC сонаправлены")
        if(lenAD == lenBC)
            disp("Векторы AD и BC равны")
        end
    else
        disp("Векторы AD и BC разнонаправлены")
    end
else
    disp("Векторы AD и BC неколлинеарны")
end
subplot(1,2,2)
hold on,axis equal,grid on;
AC = AB+AD;
quiver(A(1),A(2),AB(1),AB(2),1,"blue")
quiver(A(1),A(2),AD(1),AD(2),1,"blue")
quiver(A(1),A(2),AC(1),AC(2),1,"red")
quiver(B(1),B(2),BC(1),BC(2),1,"black")
quiver(D(1),D(2),DC(1),DC(2),1,"black")

%%Task11
figure("Name","Task11")
hold on
axis equal
grid on
a1 = [2 4 6];
b1 = [3 5 2];
a2 = [7 6 5];
b2 = [3 5 2];
s1 = a1+b1;
s2 = a2-b2;

subplot(1,2,1);
view(120,30)

quiver3(0, 0, 0, a1(1), a1(2), a1(3), 1, "Color", 'b', 'LineWidth', 2)
quiver3(a1(1), a1(2), a1(3), b1(1), b1(2), b1(3), 1, "Color", 'b', 'LineWidth', 2)
quiver3(0, 0, 0, s1(1), s1(2), s1(3), 1, "Color", 'r', 'LineWidth', 2)

text(a1(1), a1(2), a1(3), '\bfa1')
text(b1(1), b1(2), b1(3), '\bfb1')
text(s1(1), s1(2), s1(3), '\bfc1')

subplot(1,2,2); 
view(120,30)

quiver3(0, 0, 0, a2(1), a2(2), a2(3), 1, "Color", 'b', 'LineWidth', 2)
quiver3(a2(1), a2(2), a2(3), -b2(1), -b2(2), -b2(3), 1, "Color", 'b', 'LineWidth', 2)
quiver3(0, 0, 0, s2(1), s2(2), s2(3), 1, "Color", 'r', 'LineWidth', 2)

text(a2(1), a2(2), a2(3), '\bfa2')
text(b2(1), b2(2), b2(3), '\bfb2')
text(s2(1), s2(2), s2(3), '\bfc2')
