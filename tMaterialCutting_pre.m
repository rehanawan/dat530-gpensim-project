function [fire, trans] = tMaterialCutting_pre(trans)

granted = requestSR({'rMaterialCutting',4});

if (granted)
fire = 1;
else 
    fire = 0;
end