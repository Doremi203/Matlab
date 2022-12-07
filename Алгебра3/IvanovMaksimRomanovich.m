%%Task1
figure("Name","Task1")
line([0;2], [0;1])
line([0;-1], [0;2])
line([-2;0], [-4;0])
grid on

%%Task2
figure("Name","Task2")
x = [0 0; 2 2];
y = [0 2; 1 0];
line(x,y)
grid on

%%Task3
figure("Name","Task3")
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
quiver(0, 0, 2, 1, 1, "Color", "k", "LineWidth", 3)
quiver(0, 2, 2, -2, 1, "Color", "k", "LineWidth", 3)
quiver(0, 2, 3, -2, 1, "Color", "k", "LineWidth", 3)

%%Task5
figure("Name", "Task5")
hold on
quiver3(0, 0, 0, 1, 0, 0)
quiver3(0, 0, 0, 0, 1, 0)
quiver3(0, 0, 0, 0, 0, 1)

%%Task6
figure("Name","Task6")
hold on
quiver(0,0,10,0,1,"LineWidth",3)
quiver(0,0,0,10,1,"LineWidth",3)

quiver(0,0,1,0,1,"Color","k","LineWidth",4)
quiver(0,0,0,1,1,"Color","k","LineWidth",4)

%%Task7
figure("Name","Task8")
hold on
quiver3(0,0,0,10,0,0,1,"LineWidth",2)
quiver3(0,0,0,0,10,0,1,"LineWidth",2)
quiver3(0,0,0,0,0,10,1,"LineWidth",2)

quiver3(0,0,0,1,0,0,1,"Color","k","LineWidth",4)
quiver3(0,0,0,0,1,0,1,"Color","k","LineWidth",4)
quiver3(0,0,0,0,0,1,1,"Color","k","LineWidth",4)

%%Task8
figure("Name","Task8")
hold on
subplot(1,2,1)
line()