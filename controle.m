A = [
    -3625/64, -141.602, 141.602, -2.5, 2.5;
    0, 0, 0, 1, 0;
    0, 0, 0, 0, 1;
    -29, -145, 0, -64/25, 0;
    32.2222, 0, -1450/9, 0, -128/45
];

B = [
    0.244141;
    0;
    0;
    0;
    0
];


C = [0,0,0,1,0];

D = 0

sys = ss(A, B, C, D);

% Exibir o modelo

t = 20:0.2:20;

num = [7.08 20.1 1140 0];
%% 
den = [1 62 466 9494 2340]
sys2 = tf(num,den)
step(sys2,25)

%nyquist(sys2);