function [fire, trans] = tMaterialCutting_pre(trans)

granted = requestSR({'rMaterialCutting',4});

if (granted)
fire = granted;
end