function [png] = football_pn_pdf()
png.PN_name = 'Football petrinet definition';
png.set_of_Ps = {
    'pProduction',...
    'pLamination',...
    'pPrintingCutting',...
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
png.set_of_Ts = {'tTransferProduction',...
    'tLamination',...
    'tPrintingCutting',...
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
png.set_of_As = {
    'pProduction','tTransferProduction',1,...
    'tTransferProduction','pLamination',1,...
    'pLamination','tLamination',1,...
    'tLamination','pPrintingCutting',1,...
    'pPrintingCutting','tPrintingCutting',1,...
    'tPrintingCutting','pSorttingMatching',100,...
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