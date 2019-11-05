% Example-57: Simple example on firing costs
% Reggie.davidrajuh@uis.no  (c) 20 Nov 2017

function [fire, transition] = COMMON_PRE(transition)

% get the number of times the trans has fired 
n = timesfired(transition.name); 

fire = 1;   % initial assumption 
switch transition.name
    case {'t1', 't2'}
        if eq(n, 6)  % t1 and t2 are allowed to fire only 6 times 
            fire = 0; 
        end
        
    case 't3'
        if eq(n, 4)  % t3 is allowed to fire only 4 times 
            fire = 0; 
        end
    case 't4'
        if eq(n, 2)  % t4 is allowed to fire only 2 times 
            fire = 0; 
        end
end
