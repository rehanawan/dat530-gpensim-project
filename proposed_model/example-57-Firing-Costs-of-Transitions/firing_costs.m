% Example-57: Firing Costs of Transition
% Reggie.davidrajuh@uis.no  (c) 20 Nov 2017

clear all; clc;
global global_info

global_info.STOP_AT = 80;

pns = pnstruct('firing_costs_pdf');

dyn.m0 = {'p01',8, 'p02',8}; % tokens initially
dyn.ft = {'allothers',10}; 

dyn.fc_fixed = {'t1',3, 't2',250, 't3',5000, 't4',10};
dyn.fc_variable = {'t1',5, 't2',50, 't3',500, 't4',10};

pni = initialdynamics(pns, dyn);
sim = gpensim(pni);

plotp(sim, {'pEnd'});
prnfinalcolors(sim);
