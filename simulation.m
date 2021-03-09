beta1 = 0.25;
beta2 = 0.025;
gamma = 0.2;
sigma1 = 0.8;
sigma2 = 0.2;
rou1 = 1/14;
rou2 = 1/21;
q = 0.15;

% change the initial conditions
S0 = 0.8;
E0 = 0.145;
I0 = 0.05;
J0 = 0.005;
R0 = 0;
D0 = 0;

% change the equilibrium pairs
Se = 0.1;
Je = 0;
u = 0;

% To simplify the probelm, choose d0 values to be equal to the initial
% conditions
dS0 = S0;
dE0 = E0;
dI0 = I0;
dJ0 = J0;
dR0 = R0;
dD0 = D0;

stoptime = '200';
sim("system.slx",'Stoptime', stoptime);
sim("linear_approx.slx",'Stoptime', stoptime);