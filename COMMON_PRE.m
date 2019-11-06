function [fire, transition] = COMMON_PRE(transition)

switch transition.name
    case 'tQualityAsurance' % tQualityTester adds colors "AQuality" and
        %"BQuality" to tokens
        %put here condition to assign randomly a colour to the tokens (see
        %pages until page 26
        % randomize array [1, 2, 3,4,5] using GPenSIM's function 'randomgen'
        %random_errorperct = randomgen(1:5); %generate percentage of error 
        %in products from 0% to 5%
        %selected__errorperct = random_errorperct(1); %choose percentage of
        %error in products from 0% to 5%
        % 'AQuality' has 90% chance, whereas 'BQuality' has only 10%
        random_num = rand; % 0 to 1
        if and(ge(random_num,0), lt(random_num,0.95))
            color = 'AQuality'; 
        else
            color = 'BQuality';
        end
        transition.new_color = color;
%         transition.override = 1;
        granted = requestSR({'rQualityAsurance',1});
            if (granted)
                if and(ge(random_num,0), lt(random_num,0.95))
                    color = 'AQuality'; 
                else
                    color = 'BQuality';
                end
                transition.new_color = color;
%                 transition.override = 1;
                fire = granted;
            else
                fire = 0;
            end
        %want to generate tokens with assigned color
        %given by 
        %AQuality=1-selected__errorperct
        % BQuality=selected__errorperct
    case 'tTransferDispose'
            % From pQualityTested, tTransferDispose takes only the token with color 'BQuality'
            tokID1 = tokenAnyColor('pQualityTested',1, {'BQuality'});%select token with color 'BQuality'
            fire = tokID1; % fire only if the token has color 'BQuality'
    case 'tTransferAQ'
        % From pMCQualityTested, tMCTransferAQ takes only the token 
        %with color 'AQuality'
        tokID2 = tokenAnyColor('pQualityTested',1,{'AQuality'});
        % select token with color 'AQuality'
        fire = tokID2; % fire only if the token has color 't2'

    case 'tMaterialCutting'
          granted = requestSR({'rMaterialCutting',4});
            if (granted)
                fire = granted;
            else
                fire = 0;
            end
    case 'tLamination'
        granted = requestSR({'rLamination',2});
            if (granted)
                fire = granted;
            else
                fire = 0;
            end
    case 'tPanelCutting'
        granted = requestSR({'rPanelCutting',1});
            if (granted)
                fire = granted;
            else
                fire = 0;
            end
    case 'tPrinting'
        granted = requestSR({'rPrinting',1});
            if (granted)
                fire = granted;
            else
                fire = 0;
            end
    case 'tSorttingMatching'
        granted = requestSR({'rSorttingMatching',1});
            if (granted)
                fire = granted;
            else
                fire = 0;
            end
    case 'tBladerWeight'
        granted = requestSR({'rBladerWeight',1});
            if (granted)
                fire = granted;
            else
                fire = 0;
            end
    case 'tStiching'
        granted = requestSR({'rStiching',2});
            if (granted)
                fire = granted;
            else
                fire = 0;
            end
    case 'tWashing'
        granted = requestSR({'rWashing',2});
            if (granted)
                fire = granted;
            else
                fire = 0;
            end
    case 'tQualityTester'
                fire = 0;
    case 'tPacking'
        granted = requestSR({'rPacking',2});
            if (granted)
                fire = granted;
            else 
                fire = 0;
            end
        

%         
    otherwise 
        % just fire
%         disp(transition.name)
        fire = 1;
end
    
