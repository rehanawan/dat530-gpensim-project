function [png] = simple_pn_pdf()




png.PN_name = 'A Simple Petri Net definition';png.set_of_Ps = {'p1', 'p2', 'p3'};png.set_of_Ts = {'t1'};png.set_of_As = {'p1','t1',1, 'p2','t1',2, 't1','p3',1}; 