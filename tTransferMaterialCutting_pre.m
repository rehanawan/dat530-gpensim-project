function [fire, transition] = tTransferMaterialCutting_pre(transition)

transition.new_color = global_info.OrderType{2};

fire=1;
