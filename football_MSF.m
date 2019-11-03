clear all;
clc;
global global_info;
global_info.STOP_AT = 300;
global_info.Quality = {'AQuality','BQuality'};

pns = pnstruct('football_pn_pdf');
dynamic.m0 = {'pProduction',10};
dynamic.ft = {'tQualityTester',1,'tTransferAQ',1,'tTransferDispose',1,...
    'allothers',5};
dyn.fc_fixed = {'tQualityTester',50, 'tTransferAQ',100};
dyn.fc_variable = {'tQualityTester',20, 'tTransferAQ',25};

dynamic.re = {'rMaterialCutting',30,480,...
    'rLamination',125,8,...
    'rPanelCutting',75,8,...
    'rPritting',250,8,...
    'rSorttingMatching',30,8,...
    'rBladerWeight',30,8,...
    'rStiching',25,inf,...
    'rQualityAsurance',10,8,...
    'rWashing',10,8,...
    'rPacking',90,8};
dynamic.rc_fixed={'rMaterialCutting',14000};
dynamic.rc_variable={'rMaterialCutting',14000};

pni = initialdynamics(pns, dynamic);
sim = gpensim(pni);
plotp(sim, {
    'pProduction',...
    'pMatterialCutting',...
    'pQualityTester',...
    'pQualityTested',...
    'pLamination',...
    'pPanelCutting',...
    'pPrinting',...
    'pSorttingMatching',...
    'pBladerWeight',...
    'pStiching',...
    'pQualityAsurance',...
    'pWashing',...
    'pPacking',...
    'pPacked',...
    'pDispose'
    });
% prnschedule(sim);
 plotGC(sim);
% prnss(sim);
prnfinalcolors(sim);
prnschedule(sim);