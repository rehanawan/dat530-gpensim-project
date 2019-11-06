function [png] = football_pn_pdf()

png.PN_name = 'Football Petrinet Definition';

% Set of all the Places
png.set_of_Ps = {
    'pProduction',...
    'pMatterialCutting',...
    'pLamination',...
    'pPanelCutting',...
    'pPrinting',...
    'pSorttingMatching',...
    'pBladerWeight',...
    'pStiching',...
    'pQualityAsurance',...
    'pQualityTested',...
    'pWashing',...
    'pPacking',...
    'pPacked',...
    'pDispose'
    };

% Set of all the Transitions
png.set_of_Ts = {'tTransferMaterialCutting',...
    'tMaterialCutting',...
    'tLamination',...
    'tPanelCutting',...
    'tPrinting',...
    'tSorttingMatching',...
    'tBladerWeight',...
    'tStiching',...
    'tQualityAsurance',...
    'tQualityTester',...
    'tQualityTested',...
    'tTransferDispose',...
    'tTransferAQ',...
    'tWashing',...
    'tPacking'
};

% Set of all the Arcs
png.set_of_As = {
    'pProduction','tTransferMaterialCutting',1,...
    'tTransferMaterialCutting','pMatterialCutting',1,...
    'pMatterialCutting','tMaterialCutting',1,...
    'tMaterialCutting','pLamination',100,...
    'pLamination','tLamination',100,...
    'tLamination','pPanelCutting',100,...
    'pPanelCutting','tPanelCutting',100,...
    'tPanelCutting','pPrinting',100,...
    'pPrinting','tPrinting',100,...
    'tPrinting','pSorttingMatching',100,...
    'pSorttingMatching','tSorttingMatching',100,...
    'tSorttingMatching','pBladerWeight',100,...
    'pBladerWeight','tBladerWeight',100,...
    'tBladerWeight','pStiching',100,...
    'pStiching','tStiching',100,...
    'tStiching','pQualityAsurance',100,...
    'pQualityAsurance','tQualityAsurance',1,...   
    'tQualityAsurance','pQualityTested',1,...
    'pQualityTested','tTransferDispose',1,...
    'tTransferDispose','pDispose',1,...
    'pQualityTested','tTransferAQ',1,...
    'tTransferAQ','pWashing',1,...
    'pWashing','tWashing',100,...
    'tWashing','pPacking',100,...
    'pPacking','tPacking',100,...
    'tPacking','pPacked',100    
    }; 