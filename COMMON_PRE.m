function [fire, transition] = COMMON_PRE(transition)

switch transition.name
    case 'tMCQualityTester' % tQualityTester adds colors "AQuality" and
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
    case 'tMCTransferDispose'
            % From pQualityTested, tTransferDispose takes only the token with color 'BQuality'
            tokID1 = tokenAnyColor('pMCQualityTested',1, {'BQuality'});%select token with color 'BQuality'
            fire = tokID1; % fire only if the token has color 'BQuality'
    case 'tMCTransferAQ'
        % From pMCQualityTested, tMCTransferAQ takes only the token 
        %with color 'AQuality'
        tokID2 = tokenAnyColor('pMCQualityTested',1,{'AQuality'});
        % select token with color 'AQuality'
        fire = tokID2; % fire only if the token has color 't2'

    case 'tLQualityTester' % 'tLQualityTester' adds colors "AQuality" and
        %"BQuality" to token
        % 'AQuality' has 95% chance, whereas 'BQuality' has only 5%
        random_num = rand; % 0 to 1
        %%%% AQuality has 95% chance, whereas BQuality has only 5%
        if and(ge(random_num,0), lt(random_num,0.95))
            color = 'AQuality'; 
        else
            color = 'BQuality';
        end
        
        transition.new_color = color;
        transition.override = 1;
        fire = 1; % always fire
        
    case 'tLTransferDispose'
            % From pLQualityTested, tTransferDispose 
            %takes only the token with color 'BQuality'
            tokID3 = tokenAnyColor('pLQualityTested',1, {'BQuality'});
            %select token with color 'BQuality'
            fire = tokID3; % fire only if the token has color 'BQuality'
    case 'tLTransferAQ'
        % From pLQualityTested, tLTransferAQ takes only the token with 
        %color 'AQuality'
        tokID4 = tokenAnyColor('pLQualityTested',1,{'AQuality'});
        % select token with color 'AQuality'
        fire = tokID4; % fire only if the token has color 'AQuality'
        
    case 'tPCQualityTester' % 'tPCQualityTester' adds colors "AQuality" and
        %"BQuality" to token
        % 'AQuality' has 95% chance, whereas 'BQuality' has only 5%
        random_num = rand; % 0 to 1
        %%%% AQuality has 95% chance, whereas BQuality has only 5%
        if and(ge(random_num,0), lt(random_num,0.95))
            color = 'AQuality'; 
        else
            color = 'BQuality';
        end
        transition.new_color = color;
        transition.override = 1;
        fire = 1; % always fire
        
    case 'tPCTransferDispose'
            % From pPCQualityTested, tPCTransferDispose 
            %takes only the token with color 'BQuality'
            tokID5 = tokenAnyColor('pPCQualityTested',1, {'BQuality'});
            %select token with color 'BQuality'
            fire = tokID5; % fire only if the token has color 'BQuality'
    case 'tPCTransferAQ'
        % From pPCQualityTested, tPCTransferAQ takes only the token with 
        %color 'AQuality'
        tokID6 = tokenAnyColor('pPCQualityTested',1,{'AQuality'});
        % select token with color 'AQuality'
        fire = tokID6; % fire only if the token has color 'AQuality'
    
    case 'tPQualityTester' % 'tPQualityTester' adds colors "AQuality" and
        %"BQuality" to token
        % 'AQuality' has 95% chance, whereas 'BQuality' has only 5%
        random_num = rand; % 0 to 1
        %%%% t1 has 95% chance, whereas t2 has only 10%
        if and(ge(random_num,0), lt(random_num,0.95))
            color = 'AQuality'; 
        else
            color = 'BQuality';
        end
        transition.new_color = color;
        transition.override = 1;
        fire = 1; % always fire
        
    case 'tPTransferDispose'
            % From pPQualityTested, tPTransferDispose 
            %takes only the token with color 'BQuality'
            tokID7 = tokenAnyColor('pPQualityTested',1, {'BQuality'});
            %select token with color 'BQuality'
            fire = tokID7; % fire only if the token has color 'BQuality'
    case 'tPTransferAQ'
        % From pPQualityTested, tPTransferAQ takes only the token with 
        %color 'AQuality'
        tokID8 = tokenAnyColor('pPQualityTested',1,{'AQuality'});
        % select token with color 'AQuality'
        fire = tokID8; % fire only if the token has color 'AQuality'
    
    case 'tSMQualityTester' % 'tSMQualityTester' adds colors "AQuality" and
        %"BQuality" to token
        % 'AQuality' has 95% chance, whereas 'BQuality' has only 5%
        random_num = rand; % 0 to 1
        %%%% AQuality has 95% chance, whereas BQuality has only 5%
        if and(ge(random_num,0), lt(random_num,0.95))
            color = 'AQuality'; 
        else
            color = 'BQuality';
        end
        transition.new_color = color;
        transition.override = 1;
        fire = 1; % always fire
        
    case 'tSMTransferDispose'
            % From pSMQualityTested, tSMTransferDispose 
            %takes only the token with color 'BQuality'
            tokID9 = tokenAnyColor('pSMQualityTested',1, {'BQuality'});
            %select token with color 'BQuality'
            fire = tokID9; % fire only if the token has color 'BQuality'
    case 'tSMTransferAQ'
        % From pSMQualityTested, tSMTransferAQ takes only the token with 
        %color 'AQuality'
        tokID10 = tokenAnyColor('pSMQualityTested',1,{'AQuality'});
        % select token with color 'AQuality'
        fire = tokID10; % fire only if the token has color 'AQuality'
    
    case 'tBWQualityTester' % 'tBWQualityTester' adds colors "AQuality" and
        %"BQuality" to token
        % 'AQuality' has 95% chance, whereas 'BQuality' has only 5%
        random_num = rand; % 0 to 1
        %%%% t1 has 95% chance, whereas t2 has only 5%
        if and(ge(random_num,0), lt(random_num,0.95))
            color = 'AQuality'; 
        else
            color = 'BQuality';
        end
        transition.new_color = color;
        transition.override = 1;
        fire = 1; % always fire
        
    case 'tBWTransferDispose'
            % From pBWQualityTested, tBWTransferDispose 
            %takes only the token with color 'BQuality'
            tokID11 = tokenAnyColor('pBWQualityTested',1, {'BQuality'});
            %select token with color 'BQuality'
            fire = tokID11; % fire only if the token has color 'BQuality'
    case 'tBWTransferAQ'
        % From pBWQualityTested, tBWTransferAQ takes only the token with 
        %color 'AQuality'
        tokID12 = tokenAnyColor('pBWQualityTested',1,{'AQuality'});
        % select token with color 'AQuality'
        fire = tokID12; % fire only if the token has color 'AQuality'
        
        
%     case 'tStiching' % 'tStiching' selects AQuality tokens only from pStiching 
%         tokID6 = tokenAnyColor ('pStiching', 1, {'AQuality'});
%         transition.selected_tokens = tokID6; % tokens to be removed
%         fire = tokID6; % fire ONLY if P1 found
%     case 'tQualityAsurance' % 'tQualityAsurance' selects AQuality tokens only from pQualityAsurance 
%         tokID7 = tokenAnyColor ('pStiching', 1, {'AQuality'});
%         transition.selected_tokens = tokID7; % tokens to be removed
%         fire = tokID7; % fire ONLY if P1 found
%     case 'tWashing' % 'tWashing' selects AQuality tokens only from pWashing 
%         tokID8 = tokenAnyColor ('pWashing', 1, {'AQuality'});
%         transition.selected_tokens = tokID8; % tokens to be removed
%         fire = tokID8; % fire ONLY if P1 found
%     case 'tPacking' % 'tPacking' selects AQuality tokens only from pPacking 
%         tokID9 = tokenAnyColor ('pPacking', 1, {'AQuality'});
%         transition.selected_tokens = tokID9; % tokens to be removed
%         fire = tokID9; % fire ONLY if P1 found
%         
    otherwise 
        % just fire
        disp(transition.name)
        fire = 1;
end
    
