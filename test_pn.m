% Example-01 (p.12): simple_pn.m
clear all; 
clc; global global_info;
global_info.STOP_AT = 45;
pns = pnstruct('test_pn_pdf');
dynamic.m0 = {'p1',3, 'p2',5};
dynamic.ft = {'t1', 10};
pni = initialdynamics(pns, dynamic);
sim = gpensim(pni);
plotp(sim, {'p1','p2','p3'});
prnss(sim);