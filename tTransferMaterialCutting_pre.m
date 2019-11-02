function [fire, transition] = tTransferMaterialCutting_pre(transition)
global global_info;

transition.new_color = global_info.OrderType{2};
 
 fire=transition.new_color;
