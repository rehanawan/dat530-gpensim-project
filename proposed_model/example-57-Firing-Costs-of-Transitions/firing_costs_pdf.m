% Example-57: Firing Costs of Transition
function [png] = firing_costs_pdf() 
png.PN_name = 'Simple cost calculation';
png.set_of_Ps = {'p01', 'p02','p13', 'p23', 'p34a', 'p34b', 'pEnd'};
png.set_of_Ts = {'t1', 't2', 't3', 't4'}; 
png.set_of_As = {...
    'p01','t1',1, 't1','p13',1, ... % t1
    'p02','t2',1, 't2','p23',1, ... % t2
    'p13','t3',1, 'p23','t3',1, 't3','p34a',1, 't3','p34b',1, ... % T3
    'p34a','t4',1, 'p34b','t4',1, 't4','pEnd',1, ...
                };
