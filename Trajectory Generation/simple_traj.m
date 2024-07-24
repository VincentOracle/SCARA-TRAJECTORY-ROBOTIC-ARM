% Define SCARA robot parameters
L1 = 1; % Length of first arm
L2 = 1; % Length of second arm
m1 = 1; % Mass of first arm
m2 = 1; % Mass of second arm

% DH Parameters
DH = [
    0   L1  0   0;
    0   L2  0   0;
];

% Define joint limits
jointLimits = [-pi pi; -pi pi];

% Create the robot model using Robotics Toolbox
scara = SerialLink(DH, 'name', 'SCARA');

% Define a simple trajectory
t = linspace(0, 10, 100);
x = 0.5 * cos(t);
y = 0.5 * sin(t);
trajectory = [x' y'];

% Simulate the robot following the trajectory
for i = 1:length(t)
    scara.plot(trajectory(i, :));
    drawnow;
end
