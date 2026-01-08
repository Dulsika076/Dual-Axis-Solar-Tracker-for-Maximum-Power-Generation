function S = buildMotorPlant(Ts)
%BUILDMOTORPLANT Creates continuous & discrete DC motor plant models.
%   States: x = [theta; omega; i], input u = V, output y = theta

if nargin < 1, Ts = 0.1; end

% Parameters
S.p.R  = 18.2214;
S.p.L  = 8.66e-4;
S.p.Kb = 0.030941093;
S.p.Kt = 0.030941093;
S.p.J  = 9.0e-5;
S.p.B  = 2.5e-5;

% Matrices
S.A = [0      1           0
       0   -S.p.B/S.p.J  S.p.Kt/S.p.J
       0   -S.p.Kb/S.p.L -S.p.R/S.p.L];

S.B = [0; 0; 1/S.p.L];
S.C = [1 0 0];
S.D = 0;

% Models
S.G  = ss(S.A,S.B,S.C,S.D);
S.Gz = c2d(S.G, Ts, 'zoh');
S.Ts = Ts;
end
