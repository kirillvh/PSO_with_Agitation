%The MIT License (MIT), Copyright (c) 2015 Kirill Van Heerden, see License.txt for details


%Run this script(takes about 5 minutes in Matlab on a 2Ghz laptop) to see the results of particle swarm optimization for the
%Ackley and Rosenbrock functions for case were agitation is used (c3 != 0)
%and the case where it is not used (c3 = 0)

%the number of runs over which the results are averaged, the larger the
%value the longer the computation time becomes
repeat=5;
%the number of iterations per run that the PSO is run for, the larger the
%value the longer the computation time becomes
iterations=300;

[ackley50w_2,ackley50wPlot_2] = swarm_multi_dim('ackley',true,iterations,50,repeat,2);
'(1/35)'
[ackley20w_2,ackley20wPlot_2] = swarm_multi_dim('ackley',true,iterations,20,repeat,2);
'(2/35)'
[ackley5w_2,ackley5wPlot_2] = swarm_multi_dim('ackley',true,iterations,5,repeat,2);
'(3/35)'

[ackley50wo_2,ackley50woPlot_2] = swarm_multi_dim('ackley',false,iterations,50,repeat,2);
'(4/35)'
[ackley20wo_2,ackley20woPlot_2] = swarm_multi_dim('ackley',false,iterations,20,repeat,2);
'(5/35)'
[ackley5wo_2,ackley5woPlot_2] = swarm_multi_dim('ackley',false,iterations,5,repeat,2);
'(6/35)'

[rosenbrock50w_2,rosenbrock50wPlot_2] = swarm_multi_dim('rosenbrock',true,iterations,50,repeat,2);
'(7/35)'
[rosenbrock20w_2,rosenbrock20wPlot_2] = swarm_multi_dim('rosenbrock',true,iterations,20,repeat,2);
'(8/35)'
[rosenbrock5w_2,rosenbrock5wPlot_2] = swarm_multi_dim('rosenbrock',true,iterations,5,500,2);
'(9/35)'

[rosenbrock50wo_2,rosenbrock50woPlot_2] = swarm_multi_dim('rosenbrock',false,iterations,50,repeat,2);
'(10/35)'
[rosenbrock20wo_2,rosenbrock20woPlot_2] = swarm_multi_dim('rosenbrock',false,iterations,20,repeat,2);
'(11/35)'
[rosenbrock5wo_2,rosenbrock5woPlot_2] = swarm_multi_dim('rosenbrock',false,iterations,5,repeat,2);
'(12/35)'

%dim-4

[ackley50w_4,ackley50wPlot_4] = swarm_multi_dim('ackley',true,iterations,50,repeat,4);
'(13/35)'
[ackley20w_4,ackley20wPlot_4] = swarm_multi_dim('ackley',true,iterations,20,repeat,4);
'(14/35)'
[ackley5w_4,ackley5wPlot_4] = swarm_multi_dim('ackley',true,iterations,5,repeat,4);
'(15/35)'

[ackley50wo_4,ackley50woPlot_4] = swarm_multi_dim('ackley',false,iterations,50,repeat,4);
'(16/35)'
[ackley20wo_4,ackley20woPlot_4] = swarm_multi_dim('ackley',false,iterations,20,repeat,4);
'(17/35)'
[ackley5wo_4,ackley5woPlot_4] = swarm_multi_dim('ackley',false,iterations,5,repeat,4);
'(18/35)'

[rosenbrock50w_4,rosenbrock50wPlot_4] = swarm_multi_dim('rosenbrock',true,iterations,50,repeat,4);
'(19/35)'
[rosenbrock20w_4,rosenbrock20wPlot_4] = swarm_multi_dim('rosenbrock',true,iterations,20,repeat,4);
'(20/35)'
[rosenbrock5w_4,rosenbrock5wPlot_4] = swarm_multi_dim('rosenbrock',true,iterations,5,repeat,4);
'(21/35)'

[rosenbrock50wo_4,rosenbrock50woPlot_4] = swarm_multi_dim('rosenbrock',false,iterations,50,repeat,4);
'(22/35)'
[rosenbrock20wo_4,rosenbrock20woPlot_4] = swarm_multi_dim('rosenbrock',false,iterations,20,repeat,4);
'(23/35)'
[rosenbrock5wo_4,rosenbrock5woPlot_4] = swarm_multi_dim('rosenbrock',false,iterations,5,repeat,4);
'(24/35)'

%dim-8
[ackley50w_8,ackley50wPlot_8] = swarm_multi_dim('ackley',true,iterations,50,repeat,8);
'(25/35)'
[ackley20w_8,ackley20wPlot_8] = swarm_multi_dim('ackley',true,iterations,20,repeat,8);
'(26/35)'
[ackley5w_8,ackley5wPlot_8] = swarm_multi_dim('ackley',true,iterations,5,repeat,8);
'(27/35)'

[ackley50wo_8,ackley50woPlot_8] = swarm_multi_dim('ackley',false,iterations,50,repeat,8);
'(28/35)'
[ackley20wo_8,ackley20woPlot_8] = swarm_multi_dim('ackley',false,iterations,20,repeat,8);
'(29/35)'
[ackley5wo_8,ackley5woPlot_8] = swarm_multi_dim('ackley',false,iterations,5,repeat,8);
'(30/35)'

[rosenbrock50w_8,rosenbrock50wPlot_8] = swarm_multi_dim('rosenbrock',true,iterations,50,repeat,8);
'(31/35)'
[rosenbrock20w_8,rosenbrock20wPlot_8] = swarm_multi_dim('rosenbrock',true,iterations,20,repeat,8);
'(32/35)'
[rosenbrock5w_8,rosenbrock5wPlot_8] = swarm_multi_dim('rosenbrock',true,iterations,5,repeat,8);
'(33/35)'

[rosenbrock50wo_8,rosenbrock50woPlot_8] = swarm_multi_dim('rosenbrock',false,iterations,50,repeat,8);
'(33/35)'
[rosenbrock20wo_8,rosenbrock20woPlot_8] = swarm_multi_dim('rosenbrock',false,iterations,20,repeat,8);
'(34/35)'
[rosenbrock5wo_8,rosenbrock5woPlot_8] = swarm_multi_dim('rosenbrock',false,iterations,5,repeat,8);
'(35/35)'

subplot(1,2,1);
plot(ackley50woPlot_8,'-.')
hold all
plot(ackley20woPlot_8,'-.')
plot(ackley5woPlot_8,'-.')
plot(ackley50wPlot_8)
plot(ackley20wPlot_8)
plot(ackley5wPlot_8)
title('Ackley')
xlabel('Iterations')
ylabel('Log( Average Fitness )')
legend('50 Particles,c3=0','20 Particles,c3=0','5 Particles,c3=0','50 Particles,c3!=0','20 Particles,c3!=0','5 Particles,c3!=0', 'Location', 'southwest')

subplot(1,2,2);
plot(rosenbrock50woPlot_8,'-.')
hold all
plot(rosenbrock20woPlot_8,'-.')
plot(rosenbrock5woPlot_8,'-.')
plot(rosenbrock50wPlot_8)
plot(rosenbrock20wPlot_8)
plot(rosenbrock5wPlot_8)
title('Rosenbrock')
xlabel('Iterations')
ylabel('Log( Average Fitness )')
legend('50 Particles,c3=0','20 Particles,c3=0','5 Particles,c3=0','50 Particles,c3!=0','20 Particles,c3!=0','5 Particles,c3!=0', 'Location', 'southwest')
% [gbestsHist,gbests] = 
