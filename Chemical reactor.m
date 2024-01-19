clc
clear

h = -10 ;
k = -0.1 ;
E = 2500 ;
R = 8.314 ;
t0 = 0 ;
t1 = 150 ;

c = input("Initial chemical concentration (mg/L):");

T = input("Initial chemical temperature (K):");

disp(' ')

Time = [t0,t1];
Condition = [c,T];

f = @(t,T) [k*T(1)*exp(1)^(-E/(R*T(2)));h*k*T(1)*exp(1)^(-E/(R*T(2)))];

[t,T] = ode45(f, Time, Condition);

cf = T(:,1);
tf= T(:,2);

tab = table(t,cf,tf,'VariableNames',{'Time (second)','Chemical Concentration (mg/L)','Chemical Temperature (K)'});
disp(tab)

figure(1)
plot(t,cf);
title("Konsentrasi Senyawa X dalam Batch Reaktor");
xlabel('Waktu (s)');
ylabel('Konsentrasi Senyawa X (mg/L)');

figure(2)
plot(t,tf);
title("Temperatur dalam Batch Reaktor");
xlabel('Waktu (s)');
ylabel('Temperatur (K)');
