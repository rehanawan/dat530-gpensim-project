function [fire, transition] = COMMON_PRE(transition)

switch transition.name
    case 'tQualityTester' % tQualityTester adds colors "AQuality" and
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
        %%%% t1 has 90% chance, whereas t2 has only 10%
        if and(ge(random_num,0), lt(random_num,0.95))
            color = 'AQuality'; 
        else
            color = 'BQuality';
        end
        
        transition.new_color = color;
        transition.override = 1;
        fire = 1; % always fire
        %want to generate tokens with assigned color
        %given by 
        %AQuality=1-selected__errorperct
        % BQuality=selected__errorperct
    case 'tTransferDispose'
            % From pQualityTested, tTransferDispose takes only the token with color 'BQuality'
            tokID10 = tokenAnyColor('pQualityTested',1, {'BQuality'});%select token with color 'BQuality'
            fire = tokID10; % fire only if the token has color 'BQuality'
    case 'tTransferAQ'
        % From pS, t2 takes only the token with color 't2'
        tokID11 = tokenAnyColor('pQualityTested',1,{'AQuality'});% select token with color 'AQuality'
        fire = tokID11; % fire only if the token has color 't2'

    case 'tLamination' % 'tLamination' selects AQuality tokens only from pLamination 
        tokID1 = tokenAnyColor ('pLamination', 1, {'AQuality'});
        transition.selected_tokens = tokID1; % tokens to be removed
        fire = tokID1; % fire ONLY if P1 found
    case 'tPanelCutting' % 'tLamination' selects AQuality tokens only from pPanelCutting 
        tokID2 = tokenAnyColor ('pPanelCutting', 1, {'AQuality'});
        transition.selected_tokens = tokID2; % tokens to be removed
        fire = tokID2; % fire ONLY if P1 found
    case 'tPrinting' % 'tPritting' selects AQuality tokens only from pPrintting 
        tokID3 = tokenAnyColor ('pPrinting', 1, {'AQuality'});
        transition.selected_tokens = tokID3; % tokens to be removed
        fire = tokID3; % fire ONLY if P1 found
    case 'tSorttingMatching' % 'tSorttingMatching' selects AQuality tokens only from pSorttingMatching 
        tokID4 = tokenAnyColor ('pSorttingMatching', 1, {'AQuality'});
        transition.selected_tokens = tokID4; % tokens to be removed
        fire = tokID4; % fire ONLY if P1 found
    case 'tBladerWeight' % 'tBladerWeight' selects AQuality tokens only from pBladerWeight 
        tokID5 = tokenAnyColor ('pBladerWeight', 1, {'AQuality'});
        transition.selected_tokens = tokID5; % tokens to be removed
        fire = tokID5; % fire ONLY if P1 found
    case 'tStiching' % 'tStiching' selects AQuality tokens only from pStiching 
        tokID6 = tokenAnyColor ('pStiching', 1, {'AQuality'});
        transition.selected_tokens = tokID6; % tokens to be removed
        fire = tokID6; % fire ONLY if P1 found
    case 'tQualityAsurance' % 'tQualityAsurance' selects AQuality tokens only from pQualityAsurance 
        tokID7 = tokenAnyColor ('pStiching', 1, {'AQuality'});
        transition.selected_tokens = tokID7; % tokens to be removed
        fire = tokID7; % fire ONLY if P1 found
    case 'tWashing' % 'tWashing' selects AQuality tokens only from pWashing 
        tokID8 = tokenAnyColor ('pWashing', 1, {'AQuality'});
        transition.selected_tokens = tokID8; % tokens to be removed
        fire = tokID8; % fire ONLY if P1 found
    case 'tPacking' % 'tPacking' selects AQuality tokens only from pPacking 
        tokID9 = tokenAnyColor ('pPacking', 1, {'AQuality'});
        transition.selected_tokens = tokID9; % tokens to be removed
        fire = tokID9; % fire ONLY if P1 found
        
    otherwise 
        % just fire
%         disp(transition.name)
        fire = 1;
end
    
