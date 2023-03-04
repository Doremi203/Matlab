%% Task1
disp ("Task1")
a = [1.3; -3; 0.5];
b = [4.2; 6.5; -2];
cross(a, b)

%% Task2
disp ("Task2")
a = [1.3; -3; 0.5];
b = [4.2; 6.5; -2];
cross(a, b) + cross(b, a)

%% Task3
disp ("Task3")
a = [3.5; 0.1; 0];
b = [0.5; 2.1; 1];
c = [-0.2; -1.9; 2.8];
dot(a, cross(b, c))

%% Task4
disp ("Task4")
a = [3.5 0.1 0];
b = [0.5 2.1 1];
dot(a, b)

%% Task5
disp ("Task5")
a = [1 2 3];
b = [4 5 6];
c = [8 7 8];
abs(dot(a, cross(b, c)))

%% Task6
disp ("Task6")
a = [1 2 3];
b = [4 4 6 5];
c = a' * b

%% Task7
disp ("Task7")
figure(Name="Task7")
hold on, grid on;

phi = -pi : 0.1*pi : pi;
a = 1;
e=0.5;
r = a ./ (1 - e * cos(phi));
[x,y] = pol2cart(phi,r);
plot(x,y)
 
e = 1;
r = a ./ (1 - e * cos(phi));
[x,y] = pol2cart(phi,r);
plot(x,y)

e = 2;
r = a ./ (1 - e * cos(phi)); 
[x,y] = pol2cart(phi,r);
plot(x,y)

%% Task8 1 часть
disp ("Task8 часть 1")
figure(Name="Task8(1)")
hold on, grid on;

phi = -pi : 0.05*pi: pi;
z = phi;

e=0.5;
r = 1 ./ (1-e*cos(phi));
[x,y,z] =  pol2cart(phi, r', z);
plot3(x,y,z)
view(-15, 25)

%% Task8 2 часть
disp ("Task8 часть 2")
figure(Name="Task8(2)")
hold on, grid on;

phi = -pi : 0.05*pi: pi;
z = phi;

e=1;
r = 1 ./ (1-e*cos(phi));
[x,y,z] =  pol2cart(phi, r', z);
plot3(x,y,z)
view(-15, 25)

%% Task8 3 часть
disp ("Task8 часть 3")
figure(Name="Task8(3)")
hold on, grid on;

phi = -pi : 0.05*pi: pi;
z = phi;

e=2;
r = 1 ./ (1-e*cos(phi));
[x,y,z] =  pol2cart(phi, r', z);
plot3(x,y,z)
view(-15, 25)

%% Task9
disp ("Task9")
figure(Name="Task9")
hold on, grid on;

phi = -pi : 0.01*pi: pi;
r = 1;
[x,y,z] = sph2cart(phi, phi', r);
plot3(x,y,z) 
view(-45, 45)

%% Task10
disp ("Task9")
figure(Name="Task9")
hold on, grid on;

phi = -pi : 0.01*pi: pi;
r = 1;
[x,y,z] = sph2cart(phi', phi, r);
plot3(x,y,z) 
view(-50, 20)