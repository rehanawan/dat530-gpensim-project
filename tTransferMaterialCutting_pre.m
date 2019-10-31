function [fire, transition] = tTransferMaterialCutting_pre(transition)

transition.new_color = global_info.OrderType{};

fire=1;
