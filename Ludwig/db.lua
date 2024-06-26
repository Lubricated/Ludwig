--[[
	database.lua
		The database portion Of Ludwig
--]]

local ItemDB = {}
LudwigDB = ItemDB


--[[ Constants! ]]--

ludwig_unobtainable = {[17]= 1, [77]= 1, [97]= 1, [100]= 1, [104]= 1, [113]= 1, [124]= 1, [128]= 1, [135]= 1, [150]= 1, [192]= 1, [905]= 1, [906]= 1, [907]= 1, [908]= 1, [909]= 1, [917]= 1, [1022]= 1, [1023]= 1, [1026]= 1, [1046]= 1, [1047]= 1, [1162]= 1, [1163]= 1, [1170]= 1, [1174]= 1, [1272]= 1, [1279]= 1, [1298]= 1, [1354]= 1, [1371]= 1, [1379]= 1, [1392]= 1, [1397]= 1, [1398]= 1, [1424]= 1, [1432]= 1, [1435]= 1, [1508]= 1, [1535]= 1, [1545]= 1, [1684]= 1, [1736]= 1, [1957]= 1, [1960]= 1, [1961]= 1, [1969]= 1, [1984]= 1, [1985]= 1, [1999]= 1, [2038]= 1, [2045]= 1, [2051]= 1, [2052]= 1, [2053]= 1, [2106]= 1, [2170]= 1, [2255]= 1, [2305]= 1, [2306]= 1, [2551]= 1, [2552]= 1, [2573]= 1, [2574]= 1, [2647]= 1, [2655]= 1, [2993]= 1, [2994]= 1, [3007]= 1, [3050]= 1, [3051]= 1, [3054]= 1, [3059]= 1, [3060]= 1, [3061]= 1, [3064]= 1, [3068]= 1, [3077]= 1, [3150]= 1, [3159]= 1, [3215]= 1, [3219]= 1, [3221]= 1, [3226]= 1, [3232]= 1, [3242]= 1, [3243]= 1, [3244]= 1, [3246]= 1, [3247]= 1, [3271]= 1, [3333]= 1, [3436]= 1, [3459]= 1, [3522]= 1, [3523]= 1, [3524]= 1, [3525]= 1, [3526]= 1, [3527]= 1, [3528]= 1, [3529]= 1, [3532]= 1, [3533]= 1, [3534]= 1, [3536]= 1, [3537]= 1, [3538]= 1, [3539]= 1, [3540]= 1, [3541]= 1, [3542]= 1, [3543]= 1, [3544]= 1, [3547]= 1, [3548]= 1, [3549]= 1, [3646]= 1, [3883]= 1, [3885]= 1, [3886]= 1, [3887]= 1, [3888]= 1, [4191]= 1, [4192]= 1, [4193]= 1, [4442]= 1, [4657]= 1, [4664]= 1, [4667]= 1, [4670]= 1, [4673]= 1, [4679]= 1, [4682]= 1, [4685]= 1, [4691]= 1, [4764]= 1, [4811]= 1, [4812]= 1, [4815]= 1, [4853]= 1, [4855]= 1, [4856]= 1, [4857]= 1, [4899]= 1, [4934]= 1, [4950]= 1, [4955]= 1, [5053]= 1, [5258]= 1, [5260]= 1, [5261]= 1, [5262]= 1, [5294]= 1, [5295]= 1, [5296]= 1, [5297]= 1, [5298]= 1, [5307]= 1, [5308]= 1, [5358]= 1, [5522]= 1, [5546]= 1, [5548]= 1, [5607]= 1, [5856]= 1, [5870]= 1, [6088]= 1, [6254]= 1, [6255]= 1, [6434]= 1, [6886]= 1, [7248]= 1, [7299]= 1, [7948]= 1, [7949]= 1, [7950]= 1, [7951]= 1, [7952]= 1, [9888]= 1, [10596]= 1, [11021]= 1, [11041]= 1, [11585]= 1, [11586]= 1, [11587]= 1, [11589]= 1, [12187]= 1, [12188]= 1, [12189]= 1, [12244]= 1, [12245]= 1, [12452]= 1, [12453]=1, [12454]= 1, [12456]= 1, [12523]= 1, [12743]= 1, [12745]= 1, [12749]= 1, [12764]= 1, [12851]= 1, [12853]= 1, [12855]= 1, [12857]= 1, [12859]= 1, [12860]= 1, [12861]= 1, [12863]= 1, [12865]= 1, [12866]= 1, [12867]= 1, [12869]= 1, [12893]= 1, [12931]= 1, [12932]= 1, [12933]= 1, [12961]= 1, [12962]= 1, [12980]= 1, [12981]= 1, [12995]= 1, [13092]= 1, [13147]= 1, [13214]= 1, [13242]= 1, [13315]= 1, [13318]= 1, [13319]= 1, [13586]= 1, [13602]= 1, [13603]= 1, [13628]= 1, [13629]= 1, [13630]= 1, [13710]= 1, [13711]= 1, [13712]= 1, [13713]= 1, [13714]= 1, [13715]= 1, [13716]= 1, [13717]= 1, [13729]= 1, [13735]= 1, [13774]= 1, [13786]= 1, [13789]= 1, [13792]= 1, [13795]= 1, [13799]= 1, [13800]= 1, [13814]= 1, [13922]= 1, [13923]= 1, [13924]= 1, [13936]= 1, [14105]= 1, [14118]= 1, [14363]= 1, [14382]= 1, [14383]= 1, [14388]= 1, [14389]= 1, [14597]= 1, [14609]= 1, [14642]= 1, [14691]= 1, [14696]= 1, [15141]= 1, [15460]= 1, [15888]= 1, [15889]= 1, [16027]= 1, [16028]= 1, [16029]= 1, [16030]= 1, [16031]= 1, [16033]= 1, [16035]= 1, [16038]= 1, [16061]= 1, [16062]= 1, [16063]= 1, [16064]= 1, [16065]= 1, [16066]= 1, [16116]= 1, [16117]= 1, [16118]= 1, [16119]= 1, [16120]= 1, [16121]= 1, [16122]= 1, [16126]= 1, [16127]= 1, [16129]= 1, [16131]= 1, [16132]= 1, [16134]= 1, [16135]= 1, [16136]= 1, [16137]= 1, [16138]= 1, [16139]= 1, [16140]= 1, [16141]= 1, [16142]= 1, [16143]= 1, [16144]= 1, [16145]= 1, [16146]= 1, [16147]= 1, [16148]= 1, [16149]= 1, [16150]= 1, [16151]= 1, [16152]= 1, [16153]= 1, [16154]= 1, [16155]= 1, [16156]= 1, [16157]= 1, [16158]= 1, [16159]= 1, [16160]= 1, [16161]= 1, [16162]= 1, [16163]= 1, [16164]= 1, [16165]= 1, [16172]= 1, [16211]= 1, [16213]= 1, [16315]= 1, [16334]= 1, [16336]= 1, [16337]= 1, [16340]= 1, [16367]= 1, [16370]= 1, [16394]= 1, [16395]= 1, [16398]= 1, [16399]= 1, [16400]= 1, [16402]= 1, [16404]= 1, [16407]= 1, [16411]= 1, [16412]= 1, [16438]= 1, [16439]= 1, [16445]= 1, [16447]= 1, [16458]= 1, [16460]= 1, [16461]= 1, [16464]= 1, [16469]= 1, [16470]= 1, [16481]= 1, [16482]= 1, [16488]= 1, [16493]= 1, [16495]= 1, [16500]= 1, [16511]= 1, [16512]= 1, [16517]= 1, [16520]= 1, [16529]= 1, [16537]= 1, [16538]= 1, [16546]= 1, [16547]= 1, [16553]= 1, [16556]= 1, [16557]= 1, [16559]= 1, [16570]= 1, [16572]= 1, [16575]= 1, [16576]= 1, [17108]= 1, [17343]= 1, [17482]= 1, [17563]= 1, [17565]= 1, [17574]= 1, [17575]= 1, [17582]= 1, [17585]= 1, [17587]= 1, [17589]= 1, [17595]= 1, [17597]= 1, [17606]= 1, [17609]= 1, [17614]= 1, [17615]= 1, [17619]= 1, [17621]= 1, [17782]= 1, [17783]= 1, [18166]= 1, [18582]= 1, [18583]= 1, [18584]= 1, [18747]= 1, [18763]= 1, [18764]= 1, [18765]= 1, [18800]= 1, [18801]= 1, [19129]= 1, [19489]= 1, [19490]= 1, [19742]= 1, [19743]= 1, [19763]= 1, [19837]= 1, [19844]= 1, [19847]= 1, [19868]= 1, [19879]= 1, [19917]= 1, [19926]= 1, [19966]= 1, [19989]= 1, [20135]= 1, [20136]= 1, [20137]= 1, [20138]= 1, [20139]= 1, [20140]= 1, [20141]= 1, [20145]= 1, [20146]= 1, [20239]= 1, [20240]= 1, [20241]= 1, [20242]= 1, [20245]= 1, [20246]= 1, [20247]= 1, [20249]= 1, [20251]= 1, [20252]= 1, [20267]= 1, [20268]= 1, [20269]= 1, [20270]= 1, [20271]= 1, [20272]= 1, [20273]= 1, [20274]= 1, [20275]= 1, [20276]= 1, [20278]= 1, [20279]= 1, [20281]= 1, [20282]= 1, [20283]= 1, [20284]= 1, [20285]= 1, [20286]= 1, [20287]= 1, [20289]= 1, [20291]= 1, [20292]= 1, [20297]= 1, [20298]= 1, [20299]= 1, [20300]= 1, [20301]= 1, [20302]= 1, [20304]= 1, [20306]= 1, [20308]= 1, [20309]= 1, [20311]= 1, [20312]= 1, [20313]= 1, [20314]= 1, [20315]= 1, [20316]= 1, [20318]= 1, [20320]= 1, [20322]= 1, [20323]= 1, [20324]= 1, [20325]= 1, [20326]= 1, [20327]= 1, [20328]= 1, [20330]= 1, [20331]= 1, [20336]= 1, [20338]= 1, [20339]= 1, [20340]= 1, [20341]= 1, [20342]= 1, [20343]= 1, [20344]= 1, [20347]= 1, [20348]= 1, [20351]= 1, [20352]= 1, [20353]= 1, [20354]= 1, [20355]= 1, [20356]= 1, [20357]= 1, [20360]= 1, [20361]= 1, [20370]= 1, [20372]= 1, [20488]= 1, [21549]= 1, [21550]= 1, [21554]= 1, [21564]= 1, [21572]= 1, [21587]= 1, [21588]= 1, [22316]= 1, [22646]= 1, [23051]= 1, [23125]= 1, [23356]= 1, [23363]= 1, [25969]= 1, [26128]= 1, [26129]= 1, [26130]= 1, [26131]= 1, [26132]= 1, [26133]= 1, [26134]= 1, [26135]= 1, [26513]= 1, [26779]= 1, [27002]= 1, [27007]= 1, [30465]= 1, [31802]= 1, [32094]= 1, [32096]= 1, [32097]= 1, [32098]= 1, [32101]= 1, [32102]= 1, [32104]= 1, [32106]= 1, [32107]= 1, [32108]= 1, [32109]= 1, [32111]= 1, [32114]= 1, [32116]= 1, [32117]= 1, [32119]= 1, [32121]= 1, [32123]= 1, [32125]= 1, [32126]= 1, [32127]= 1, [32129]= 1, [32131]= 1, [32132]= 1, [32133]= 1, [32135]= 1, [32137]= 1, [32138]= 1, [32140]= 1, [32142]= 1, [32143]= 1, [32145]= 1, [32147]= 1, [32148]= 1, [32150]= 1, [32152]= 1, [32153]= 1, [32155]= 1, [32157]= 1, [32158]= 1, [32160]= 1, [32162]= 1, [32163]= 1, [32165]= 1, [32167]= 1, [32168]= 1, [32170]= 1, [32172]= 1, [32594]= 1, [34030]= 1, [34219]= 1, [36896]= 1, [36897]= 1, [38496]= 1, [38497]= 1, [40307]= 1, [41900]= 1, [41911]= 1, [41995]= 1, [42000]= 1, [42007]= 1, [42013]= 1, [42019]= 1, [42083]= 1, [43727]= 1, [43728]= 1, [43729]= 1, [43730]= 1, [43731]= 1, [43732]= 1, [43733]= 1, [43734]= 1, [43735]= 1, [43736]= 1, [43737]= 1, [43738]= 1, [43739]= 1, [43740]= 1, [43741]= 1, [43742]= 1, [43743]= 1, [43744]= 1, [43745]= 1, [43746]= 1, [43747]= 1, [43748]= 1, [43749]= 1, [43750]= 1, [43751]= 1, [43752]= 1, [43753]= 1, [43754]= 1, [43755]= 1, [43756]= 1, [43757]= 1, [43758]= 1, [43759]= 1, [43760]= 1, [43761]= 1, [43762]= 1, [43763]= 1, [43764]= 1, [43765]= 1, [43766]= 1, [43767]= 1, [43768]= 1, [43769]= 1, [43770]= 1, [43771]= 1, [43772]= 1, [43773]= 1, [43774]= 1, [43775]= 1, [43776]= 1, [43777]= 1, [43778]= 1, [43779]= 1, [43780]= 1, [43781]= 1, [43782]= 1, [43783]= 1, [43784]= 1, [43785]= 1, [43786]= 1, [43787]= 1, [43788]= 1, [43789]= 1, [43790]= 1, [43791]= 1, [43792]= 1, [43793]= 1, [43794]= 1, [43795]= 1, [43796]= 1, [43797]= 1, [43798]= 1, [43799]= 1, [43800]= 1, [43801]= 1, [43802]= 1, [43803]= 1, [43804]= 1, [43805]= 1, [43806]= 1, [43807]= 1, [43808]= 1, [43809]= 1, [43810]= 1, [43811]= 1, [43812]= 1, [43813]= 1, [43814]= 1, [43815]= 1, [43816]= 1, [43817]= 1, [43818]= 1, [43819]= 1, [43820]= 1, [43822]= 1, [44090]= 1, [45350]= 1, [46213]= 1, [46214]= 1, [46215]= 1, [46216]= 1, [46217]= 1, [46218]= 1, [46219]= 1, [46220]= 1, [46221]= 1, [46222]= 1, [46223]= 1, [46224]= 1, [46225]= 1, [46226]= 1, [46227]= 1, [46228]= 1, [46230]= 1, [46231]= 1, [46232]= 1, [46233]= 1, [46234]= 1, [46235]= 1, [46236]= 1, [46237]= 1, [46238]= 1, [46239]= 1, [46240]= 1, [46241]= 1, [46242]= 1, [46243]= 1, [46244]= 1, [46245]= 1, [46246]= 1, [46247]= 1, [46248]= 1, [46249]= 1, [46250]= 1, [46251]= 1, [46252]= 1, [46253]= 1, [46254]= 1, [46255]= 1, [46256]= 1, [46257]= 1, [46258]= 1, [46259]= 1, [46260]= 1, [46261]= 1, [46262]= 1, [46263]= 1, [46264]= 1, [46265]= 1, [46266]= 1, [46267]= 1, [46268]= 1, [46269]= 1, [46270]= 1, [46271]= 1, [46272]= 1, [46273]= 1, [46274]= 1, [46275]= 1, [46276]= 1, [46277]= 1, [46278]= 1, [46279]= 1, [46280]= 1, [46281]= 1, [46282]= 1, [46283]= 1, [46284]= 1, [46285]= 1, [46286]= 1, [46287]= 1, [46288]= 1, [46289]= 1, [46290]= 1, [46291]= 1, [46292]= 1, [46293]= 1, [46294]= 1, [46295]= 1, [46296]= 1, [46297]= 1, [46298]= 1, [46299]= 1, [46300]= 1, [46301]= 1, [46302]= 1, [46303]= 1, [46304]= 1, [46305]= 1, [46306]= 1, [46307]= 1, [46309]= 1, [53491]= 1, [53492]= 1, [53493]= 1, [53494]= 1, [53495]= 1, [53496]= 1, [53497]= 1, [53498]= 1, [53499]= 1, [53500]= 1, [53501]= 1, [53502]= 1, [53503]= 1, [53504]= 1, [53505]= 1, [53506]= 1, [53507]= 1, [53508]= 1, [53509]= 1, [54592]= 1, [53097] = 1, [54617]= 1, [38691]= 1, 
[3535]= 1, [3546]= 1, [11201]= 1, [11200]= 1, [11199]= 1, [14393]= 1, [14385]= 1, [3545]= 1, [3004]= 1, [25627]= 1, [25581]= 1, [38383]= 1, [37976]= 1, [38140]= 1, [37967]= 1, [37955]= 1, [38383]= 1, [28935]= 1, [28931]= 1, [28930]= 1, [28929]= 1, [31650]= 1, [31649]= 1, [31648]= 1, [31647]= 1, [31646]= 1, [28928]= 1, [28925]= 1, [28919]= 1, [28850]= 1, [28849]= 1, [28848]= 1, [28847]= 1, [28846]= 1, [28845]= 1, [28844]= 1, [28843]= 1, [28842]= 1, [28841]= 1, [28922]= 1, [28921]= 1, [28918]= 1, [28920]= 1, [28917]= 1, [28924]= 1, [28938]= 1, [28939]= 1, [28959]= 1, [28957]= 1, [28955]= 1, [28954]= 1, [31644]= 1, [31643]= 1, [31642]= 1, [31641]= 1, [31640]= 1, [28953]= 1, [28951]= 1, [28948]= 1, [28698]= 1, [28697]= 1, [28696]= 1, [28695]= 1, [28694]= 1, [28693]= 1, [28692]= 1, [28691]= 1, [28690]= 1, [28689]= 1, [28947]= 1, [28946]= 1, [28945]= 1, [28944]= 1, [28942]= 1, [28950]= 1, [28941]= 1, [28940]= 1, [45850]= 1, [45853]= 1, [45852]= 1, [45851]= 1, [44415]= 1, [42343]= 1, [42217]= 1, [42556]= 1, [42216]= 1, [42218]= 1, [42529]= 1, [42568]= 1, [42222]= 1, [42215]= 1, [42220]= 1, [42219]= 1, [42213]= 1, [42535]= 1, [42344]= 1, [44416]= 1, [42382]= 1, [42523]= 1, [42294]= 1, [42206]= 1, [42212]= 1, [42295]= 1, [42221]= 1, [42356]= 1, [42557]= 1, [17075]= 1, [17064]= 1, [17078]= 1, [18813]= 1, [18205]= 1, [17068]= 1, [17067]= 1, [34074]= 1, [33957]= 1, [34073]= 1, [34075]= 1, [35495]= 1, [35494]= 1, [35496]= 1, [35511]= 1, [35514]= 1, [38287]= 1, [38288]= 1, [38290]= 1, [38289]= 1, [35497]= 1, [35508]= 1, [35509]= 1, [35507]= 1, [43081]= 1, [43080]= 1, [43082]= 1, [43083]= 1, [28994]= 1, [28993]= 1, [28991]= 1, [28990]= 1, [28975]= 1, [28974]= 1, [24557]= 1, [28297]= 1, [28310]= 1, [28358]= 1, [28312]= 1, [32451]= 1, [28313]= 1, [32452]= 1, [28305]= 1, [28476]= 1, [42673]= 1, [42672]= 1, [42671]= 1, [42670]= 1, [42669]= 1, [28314]= 1, [28309]= 1, [32450]= 1, [28346]= 1, [28298]= 1, [28308]= 1, [28299]= 1, [28302]= 1, [28640]= 1, [28639]= 1, [28630]= 1, [28629]= 1, [28449]= 1, [28450]= 1, [32055]= 1, [32053]= 1, [32046]= 1, [32045]= 1, [32044]= 1, [32964]= 1, [32028]= 1, [32961]= 1, [33309]= 1, [32026]= 1, [32014]= 1, [41223]= 1, [41047]= 1, [41063]= 1, [44417]= 1, [41233]= 1, [41050]= 1, [41068]= 1, [42345]= 1, [42247]= 1, [42558]= 1, [42241]= 1, [41228]= 1, [41049]= 1, [41073]= 1, [42259]= 1, [42530]= 1, [42569]= 1, [42274]= 1, [42021]= 1, [42020]= 1, [42023]= 1, [42026]= 1, [42022]= 1, [42025]= 1, [42024]= 1, [42254]= 1, [42269]= 1, [42264]= 1, [42226]= 1, [42536]= 1, [42351]= 1, [44418]= 1, [42383]= 1, [42524]= 1, [42316]= 1, [42061]= 1, [42060]= 1, [42056]= 1, [42058]= 1, [42055]= 1, [42059]= 1, [42057]= 1, [42207]= 1, [42231]= 1, [42321]= 1, [42279]= 1, [42359]= 1, [42563]= 1, [42112]= 1, [42110]= 1, [44419]= 1, [42346]= 1, [42248]= 1, [42559]= 1, [42242]= 1, [42260]= 1, [42531]= 1, [42570]= 1, [42275]= 1, [42027]= 1, [42255]= 1, [42270]= 1, [42265]= 1, [42227]= 1, [42537]= 1, [42352]= 1, [44420]= 1, [42384]= 1, [42525]= 1, [42317]= 1, [42208]= 1, [42232]= 1, [42322]= 1, [42280]= 1, [42362]= 1, [42564]= 1, [44421]= 1, [42347]= 1, [42249]= 1, [42560]= 1, [42243]= 1, [42261]= 1, [42532]= 1, [42571]= 1, [42276]= 1, [42256]= 1, [42271]= 1, [42266]= 1, [42228]= 1, [42538]= 1, [42353]= 1, [44422]= 1, [42385]= 1, [42526]= 1, [42318]= 1, [42209]= 1, [42233]= 1, [42323]= 1, [42281]= 1, [42364]= 1, [42565]= 1, [45959]= 1, [45948]= 1, [45966]= 1, [45958]= 1, [45955]= 1, [45971]= 1, [45964]= 1, [45970]= 1, [45956]= 1, [45963]= 1, [45968]= 1, [45957]= 1, [45969]= 1, [45967]= 1, [45962]= 1, [45961]= 1, [45949]= 1, [45953]= 1, [45954]= 1, [44423]= 1, [42348]= 1, [42250]= 1, [42244]= 1, [42262]= 1, [42277]= 1, [42257]= 1, [42272]= 1, [42267]= 1, [42229]= 1, [42354]= 1, [44424]= 1, [42386]= 1, [42319]= 1, [42210]= 1, [42234]= 1, [42324]= 1, [42282]= 1, [49189]= 1, [42366]= 1, [42561]= 1, [42533]= 1, [42572]= 1, [42539]= 1, [42527]= 1, [49187]= 1, [42566]= 1, [48511]= 1, [48402]= 1, [48440]= 1, [48509]= 1, [48410]= 1, [48519]= 1, [48435]= 1, [48408]= 1, [48521]= 1, [48432]= 1, [48444]= 1, [48507]= 1, [48515]= 1, [48442]= 1, [48428]= 1, [48426]= 1, [48404]= 1, [48414]= 1, [49191]= 1, [48412]= 1









}

--[[ Utility Functions ]]--

--returns the difference between two strings, where one is known to be within the other.
local function getDistance(str1, str2)
	--a few optimizations for when we already know distance
	if str1 == str2 then
		return 0
	end

	if not str1 then
		return #str2
	end

	if not str2 then
		return #str1
	end

	return abs(#str1 - #str2)
end

--formats a string for use as a search pattern
local function toSearchStr(name)
	return name:gsub('%p', '%%%1')
end


--[[ Sorting Methods ]]--

--sorts a list by rarity, either closeness to the searchString if there's been a search, then level, then name
local function sortByEverything(id1, id2)
	local item1 = ItemDB:GetItemInfo(id1)
	local item2 = ItemDB:GetItemInfo(id2)
	local name1 = item1.search
	local name2 = item2.search
	local rarity1 = item1[3]
	local rarity2 = item2[3]
	local level1 = item1[4]
	local level2 = item2[4]

	if rarity1 ~= rarity2 then
		return rarity1 > rarity2
	end

	local lastSearch = ItemDB.lastSearchString
	if lastSearch then
		local dist1 = getDistance(lastSearch, name1)
		local dist2 = getDistance(lastSearch, name2)
		if dist1 ~= dist2 then
			return dist1 < dist2
		end
	end

	if level1 ~= level2 then
		return level1 > level2
	end

	return name1 < name2
end

--sort by distance to the searchTerm
local function sortByDistance(id1, id2)
	local lastSearch = ItemDB.lastSearchString
	local item1 = ItemDB:GetItemInfo(id1)
	local item2 = ItemDB:GetItemInfo(id2)

	return getDistance(lastSearch, item1.search) < getDistance(lastSearch, item2.search)
end

--[[
	DB Setup/cleanup
--]]

do
	local itemInfo
	local GetItemInfo = _G['GetItemInfo']

	--get item information
	--if we have a result, save in t[id] and return t[id]
	local function getAndSaveItemInfo(t, id)
		local result
		local name, link, rarity, iLevel, reqLevel, type, subType, stackCount, equipLoc, texture = GetItemInfoCustom(id)
		if name then
			result = {
				name,
				link,
				rarity,
				iLevel,
				reqLevel,
				type,
				subType,
				stackCount,
				equipLoc,
				texture,
				['search'] = name:lower()
			}
		end

		t[id] = result
		return result
	end

	local function getItemInfoTable()
		return setmetatable({}, {__index = getAndSaveItemInfo})
	end

	--gathers all attunable IDs
	--does so by checking up to maxID for any attunable item
	function ItemDB:GatherAllAttunables()
		self["attunables"] = {}
		max_ID = 70000	
		for i = 1, max_ID do
			if CanAttuneItemHelper(i) > 0  and not ludwig_unobtainable[i] then
				table.insert(self["attunables"], i)
			end
		end
	end

	--refresh the database
	--this is done via looking up each itemID in itemInfo to force a query
	function ItemDB:Refresh()
		if not self["attunables"] then
			self:GatherAllAttunables()
		end
		if itemInfo then
			for i, id in pairs(self["attunables"]) do
				local k = itemInfo[id]
			end
		end
	end

	--returns an iterator over all data in itemInfo
	--creates and loads itemInfo if it does not exist yet
	function ItemDB:GetAllItems()
		if not itemInfo then
			itemInfo = getItemInfoTable()
			self:Refresh()
		end

		return pairs(itemInfo)
	end

	--returns a table filled with the returns of GetItemInfo(id) if we have information about an item
	--returns nil if we do not
	--creates and loads itemInfo if it does not exist yet
	function ItemDB:GetItemInfo(id)
		if not itemInfo then
			itemInfo = getItemInfoTable()
			self:Refresh()
		end
		return itemInfo[id]
	end
end


--[[
	Query Methods
--]]

--get all items matching the given filter pattern
do
	local results = {}
	function ItemDB:GetItems(name, quality, type, subType, equipLoc, minLevel, maxLevel)
		for k, v in pairs(results) do results[k] = nil end

		--get search string based on name
		local search
		if name and #name > 2 then
			name = name:lower()
			search = toSearchStr(name)
		else
			search = nil
		end
		self.lastSearchStr = name
		self["concerned_items"] = 0
		for id, item in self:GetAllItems() do
			if self:ItemInSet(id, item, search, name, quality, type, subType, equipLoc, minLevel, maxLevel) then
				table.insert(results, id)
			end
		end
		table.sort(results, sortByEverything)
		return results
	end

	--returns true if the given item matches all defined filter rules, and false otherwise
	function ItemDB:ItemInSet(id, item, search, name, quality, type, subType, equipLoc, minLevel, maxLevel)
		if quality and item[3] ~= quality then
			return false
		end

		if minLevel and item[5] < minLevel then
			return false
		end

		if maxLevel and item[5] > maxLevel then
			return false
		end

		if type and item[6] ~= type then
			return false
		end

		if subType and item[7] ~= subType then
			return false
		end

		if equipLoc and item[9] ~= equipLoc then
			return false
		end

		if search and not(item.search == name or item.search:match(search))then
			return false
		end
		self["concerned_items"] = self["concerned_items"] + 1
		if GetItemAttuneProgress(id) >= 100 then
			return false
		end

		return true
	end
end

--returns all items that have names that start with <name>
--used for linkerator support
do
	local results = {}
	function ItemDB:GetItemsNamedLike(name, maxResults)
		for k, v in pairs(results) do results[k] = nil end

		--no matches in the case of no name being passed/an empty string
		if not(name) or name == '' then
			self.lastSearch = nil
			return results
		end

		local name = name:lower()
		self.lastSearchStr = name

		local search = '^' .. toSearchStr(name) --we're looking for items that have names that start with the search pattern
		for id, item in self:GetAllItems() do
			if item.search:match(search) then
				table.insert(results, id)
			end
		end

		table.sort(results, sortByDistance)
		return results
	end
end


--[[
	Utility Accessors
--]]

function ItemDB:GetItemName(id, inColor)
	local info = self:GetItemInfo(id)
	local name = info and info[1]

	if name and inColor then
		local rarity = info[3]
		local hex = (select(4, GetItemQualityColor(rarity)))
		return format('%s%s|r', hex, name)
	end
	return name
end

function ItemDB:GetItemLink(id)
	local info = self:GetItemInfo(id)
	return info and info[2]
end

function ItemDB:GetItemTexture(id)
	local info = self:GetItemInfo(id)
	return info and info[10]
end