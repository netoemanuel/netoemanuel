select cr.* 

from ContasReceber cr 
join clientes_complemento cli on cli.codcliente = cr.codcliente
where cli.codclientematriz = 1001725 
	and cr.DataVencimento between '2024-01-25' and '2024-01-25' 
	--and cr.saldo > 0
	and cr.situacao = 'Confirmada'
	--and cr.codportador = 5
	--and cr.RemessaCobranca�is�null
	and cr.CodFilialOrigem = 'CG'
	and cr.CodContasReceber not in (1566180,1566085,1566086)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--#14796 ALTERA��O DE VENCIMENTO FATURAS C.VALE 25/01/2024 PARA DIA 01/ 02 / 2024

--update ContasReceber set vencimentooriginal = datavencimento where ContasReceber.CodContasReceber IN(1566035,1566033,1566492,1566493,1566494,1566495,1566496,1566497
--,1566498,1566499,1566507,1566508,1566509,1566510,1566511,1566512,1566513,1566514,1567107,1566037,1566040,1566445,1566422,1566423,1566034,1566446
--,1566515,1566516,1566517,1566518,1566519,1566520,1566521,1566522,1566523,1566524,1566525,1566526,1566527,1566528,1566529,1566530,1566531,1566532
--,1566427,1566428,1566414,1566036,1566041,1566356,1566357,1566358,1566359,1566429,1566430,1566431,1566432,1566433,1566434,1566435,1566436,1566437
--,1566438,1566448,1566449,1566450,1566451,1566452,1566453,1566454,1566455,1566456,1566457,1566458,1566459,1566460,1566461,1566462,1566463,1566464
--,1566465,1566469,1566470,1566471,1566472,1566473,1566474,1566415,1566416,1566417,1566418,1566042,1566360,1566439,1566440,1566468,1566424,1566425
--,1566791,1566792,1566793,1566794,1566795,1566796,1566797,1566798,1566799,1566800,1566801,1566802,1566803,1566804,1566805,1566806,1566807,1566778
--,1566779,1566780,1566781,1566782,1566783,1566784,1566785,1566786,1566787,1567104,1567105,1567106,1566773,1566774,1566533,1566775,1566776,1566534
--,1566441,1566442,1566466,1566475,1566443,1566361,1566444,1566467,1566374,1566419,1566420,1566421)


--update ContasReceber set datavencimento = '2024-02-01' where ContasReceber.CodContasReceber IN(1566035,1566033,1566492,1566493,1566494,1566495,1566496,1566497
--,1566498,1566499,1566507,1566508,1566509,1566510,1566511,1566512,1566513,1566514,1567107,1566037,1566040,1566445,1566422,1566423,1566034,1566446
--,1566515,1566516,1566517,1566518,1566519,1566520,1566521,1566522,1566523,1566524,1566525,1566526,1566527,1566528,1566529,1566530,1566531,1566532
--,1566427,1566428,1566414,1566036,1566041,1566356,1566357,1566358,1566359,1566429,1566430,1566431,1566432,1566433,1566434,1566435,1566436,1566437
--,1566438,1566448,1566449,1566450,1566451,1566452,1566453,1566454,1566455,1566456,1566457,1566458,1566459,1566460,1566461,1566462,1566463,1566464
--,1566465,1566469,1566470,1566471,1566472,1566473,1566474,1566415,1566416,1566417,1566418,1566042,1566360,1566439,1566440,1566468,1566424,1566425
--,1566791,1566792,1566793,1566794,1566795,1566796,1566797,1566798,1566799,1566800,1566801,1566802,1566803,1566804,1566805,1566806,1566807,1566778
--,1566779,1566780,1566781,1566782,1566783,1566784,1566785,1566786,1566787,1567104,1567105,1567106,1566773,1566774,1566533,1566775,1566776,1566534
--,1566441,1566442,1566466,1566475,1566443,1566361,1566444,1566467,1566374,1566419,1566420,1566421)


--update ContasReceber set datavencimento = vencimentooriginal  where ContasReceber.CodContasReceber IN  (1566035,1566033,1566492,1566493,1566494,1566495,1566496,1566497
--,1566498,1566499,1566507,1566508,1566509,1566510,1566511,1566512,1566513,1566514,1567107,1566037,1566040,1566445,1566422,1566423,1566034,1566446
--,1566515,1566516,1566517,1566518,1566519,1566520,1566521,1566522,1566523,1566524,1566525,1566526,1566527,1566528,1566529,1566530,1566531,1566532
--,1566427,1566428,1566414,1566036,1566041,1566356,1566357,1566358,1566359,1566429,1566430,1566431,1566432,1566433,1566434,1566435,1566436,1566437
--,1566438,1566448,1566449,1566450,1566451,1566452,1566453,1566454,1566455,1566456,1566457,1566458,1566459,1566460,1566461,1566462,1566463,1566464
--,1566465,1566469,1566470,1566471,1566472,1566473,1566474,1566415,1566416,1566417,1566418,1566042,1566360,1566439,1566440,1566468,1566424,1566425
--,1566791,1566792,1566793,1566794,1566795,1566796,1566797,1566798,1566799,1566800,1566801,1566802,1566803,1566804,1566805,1566806,1566807,1566778
--,1566779,1566780,1566781,1566782,1566783,1566784,1566785,1566786,1566787,1567104,1567105,1567106,1566773,1566774,1566533,1566775,1566776,1566534
--,1566441,1566442,1566466,1566475,1566443,1566361,1566444,1566467,1566374,1566419,1566420,1566421)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--select * from ContasReceber where CodContasReceber IN  (1563210,1563211,1563212,
--1563213,1563217,1563165,1563166,1563167,1563168,1563169,1563182,1563170,1563171,1563172,1563173,1563174,
--1563175,1563183,1563184,1563185,1563127,1563128,1563129,1563130,1563131,1563132,1563133,1563134,1563135,1563136,1563186,1563187,
--1563188,1563189,1563190,1563191,1563192,1563193,1563194,1563195,1563196,1563197,1563198,1563199,1563137,1563138,1563139,1563140,
--1563141,1563142,1563143,1563144,1563145,1563146,1563147,1563148,1563149,1563150,1563151,1563152,1563214,1563204,1563153,1563154,
--1563218,1563219,1563220,1563351,1563156,1563200,1563352,1563176,1563158,1563159,1563160,1563161,1563162)

--select * from ContasReceber where CodContasReceber IN (1563506,1563507,1563508,
--1563497,1563498,1563469,1563470,1563471,1563472,1563473,1563474,1563475,1563476,
--1563477,1563478,1563479,1563480,1563481,1563499,1563500,1563501,1563502,1563503)

--update ContasReceber set vencimentooriginal = datavencimento where ContasReceber.CodContasReceber IN (1563506,1563507,1563508,
--1563497,1563498,1563469,1563470,1563471,1563472,1563473,1563474,1563475,1563476,
--1563477,1563478,1563479,1563480,1563481,1563499,1563500,1563501,1563502,1563503)

--update ContasReceber set datavencimento = '2024-01-18' where ContasReceber.CodContasReceber IN  (1563506,1563507,1563508,
--1563497,1563498,1563469,1563470,1563471,1563472,1563473,1563474,1563475,1563476,
--1563477,1563478,1563479,1563480,1563481,1563499,1563500,1563501,1563502,1563503)

--update ContasReceber set datavencimento = vencimentooriginal  where ContasReceber.CodContasReceber IN  (1563506,1563507,1563508,
--1563497,1563498,1563469,1563470,1563471,1563472,1563473,1563474,1563475,1563476,
--1563477,1563478,1563479,1563480,1563481,1563499,1563500,1563501,1563502,1563503)

--update ContasReceber set vencimentooriginal = datavencimento where ContasReceber.CodContasReceber IN (1563210,1563211,1563212,
--1563213,1563217,1563165,1563166,1563167,1563168,1563169,1563182,1563170,1563171,1563172,1563173,1563174,
--1563175,1563183,1563184,1563185,1563127,1563128,1563129,1563130,1563131,1563132,1563133,1563134,1563135,1563136,1563186,1563187,
--1563188,1563189,1563190,1563191,1563192,1563193,1563194,1563195,1563196,1563197,1563198,1563199,1563137,1563138,1563139,1563140,
--1563141,1563142,1563143,1563144,1563145,1563146,1563147,1563148,1563149,1563150,1563151,1563152,1563214,1563204,1563153,1563154,
--1563218,1563219,1563220,1563351,1563156,1563200,1563352,1563176,1563158,1563159,1563160,1563161,1563162)

--update ContasReceber set datavencimento = '2024-01-18' where ContasReceber.CodContasReceber IN  (1563210,1563211,1563212,
--1563213,1563217,1563165,1563166,1563167,1563168,1563169,1563182,1563170,1563171,1563172,1563173,1563174,
--1563175,1563183,1563184,1563185,1563127,1563128,1563129,1563130,1563131,1563132,1563133,1563134,1563135,1563136,1563186,1563187,
--1563188,1563189,1563190,1563191,1563192,1563193,1563194,1563195,1563196,1563197,1563198,1563199,1563137,1563138,1563139,1563140,
--1563141,1563142,1563143,1563144,1563145,1563146,1563147,1563148,1563149,1563150,1563151,1563152,1563214,1563204,1563153,1563154,
--1563218,1563219,1563220,1563351,1563156,1563200,1563352,1563176,1563158,1563159,1563160,1563161,1563162)

--update ContasReceber set datavencimento = vencimentooriginal  where ContasReceber.CodContasReceber IN  (1563210,1563211,1563212,
--1563213,1563217,1563165,1563166,1563167,1563168,1563169,1563182,1563170,1563171,1563172,1563173,1563174,
--1563175,1563183,1563184,1563185,1563127,1563128,1563129,1563130,1563131,1563132,1563133,1563134,1563135,1563136,1563186,1563187,
--1563188,1563189,1563190,1563191,1563192,1563193,1563194,1563195,1563196,1563197,1563198,1563199,1563137,1563138,1563139,1563140,
--1563141,1563142,1563143,1563144,1563145,1563146,1563147,1563148,1563149,1563150,1563151,1563152,1563214,1563204,1563153,1563154,
--1563218,1563219,1563220,1563351,1563156,1563200,1563352,1563176,1563158,1563159,1563160,1563161,1563162)


 --#12310 - Alterar vencimento faturas

--update ContasReceber set vencimentooriginal = datavencimento where ContasReceber.CodContasReceber IN (1548541,1548840,1549174,1549473,25027392,25027393,25027394,25027395,25027396,
--25027397,1551214,1551215,1551216,1551217,1551218,1551219,1551220,1551221,1551312,1551313,1551314,1551315,1551316,1551317,1551318,1551319,1551320,1551199,1551200,1551331,1551332,1551172,
--1551173,1551174,1551175,1551355,1551356,1551357,1551343,1551344,1551345,2076520,2076521,2076522,2076523,2076524,2076530,1552023,25027488,64006770,25027533,25027549,25027534,25027535,
--25027536,25027537,1549408,1551184,1551185,1551186,1551346,1551347,1551348,1551349,1551176,1551333,1551187,1551188,25027481,25027539,25027546,1551177,1551358,1551359,1551360,1551350,
--1551351,1549701,1551361,1551352,1551362,1551189,1545127,25027532,1549699,1549700,1551222,1551223,1551201,1551202,1551334,1551337,2076525,1552016,1552017,25027543,25027544,64006774,25027547,
--25027548,64006771,1538442,1545129,64006282,1546909,1551224,1551225,1551226,1551227,1551228,1551229,1551230,1551231,1551232,1551233,1551234,1551235,1551236,1551237,1551238,1551239,1551240,
--1551241,1551242,1551243,1551244,1551245,1551246,1551247,1551248,1551249,1551250,1551251,1551252,1551253,1551254,1551255,1551256,1551257,1551258,1551321,1551322,1551323,1551324,1551325,1551326,
--1551327,1551328,1551329,1551330,1551203,1551335,1551336,1551178,1551179,1551180,1551181,1551363,1551364,1551190,1551191,1551353,1551354,2076526,2076527,1552024,1552014,1552015,25027506,
--25027538,64006775,64006772,25027545,64006776,25027388,25027389,25027390,25027391,25027540,64006773,1551259,25027541,25027542,25027530,25027531,25027550)

--update ContasReceber set datavencimento = '2023-11-09' where ContasReceber.CodContasReceber IN (1548541,1548840,1549174,1549473,25027392,25027393,25027394,25027395,25027396,
--25027397,1551214,1551215,1551216,1551217,1551218,1551219,1551220,1551221,1551312,1551313,1551314,1551315,1551316,1551317,1551318,1551319,1551320,1551199,1551200,1551331,1551332,1551172,
--1551173,1551174,1551175,1551355,1551356,1551357,1551343,1551344,1551345,2076520,2076521,2076522,2076523,2076524,2076530,1552023,25027488,64006770,25027533,25027549,25027534,25027535,
--25027536,25027537,1549408,1551184,1551185,1551186,1551346,1551347,1551348,1551349,1551176,1551333,1551187,1551188,25027481,25027539,25027546,1551177,1551358,1551359,1551360,1551350,
--1551351,1549701,1551361,1551352,1551362,1551189,1545127,25027532,1549699,1549700,1551222,1551223,1551201,1551202,1551334,1551337,2076525,1552016,1552017,25027543,25027544,64006774,25027547,
--25027548,64006771,1538442,1545129,64006282,1546909,1551224,1551225,1551226,1551227,1551228,1551229,1551230,1551231,1551232,1551233,1551234,1551235,1551236,1551237,1551238,1551239,1551240,
--1551241,1551242,1551243,1551244,1551245,1551246,1551247,1551248,1551249,1551250,1551251,1551252,1551253,1551254,1551255,1551256,1551257,1551258,1551321,1551322,1551323,1551324,1551325,1551326,
--1551327,1551328,1551329,1551330,1551203,1551335,1551336,1551178,1551179,1551180,1551181,1551363,1551364,1551190,1551191,1551353,1551354,2076526,2076527,1552024,1552014,1552015,25027506,
--25027538,64006775,64006772,25027545,64006776,25027388,25027389,25027390,25027391,25027540,64006773,1551259,25027541,25027542,25027530,25027531,25027550)


--Voltar
--update ContasReceber set datavencimento = vencimentooriginal  where ContasReceber.CodContasReceber IN (1548541,1548840,1549174,1549473,25027392,25027393,25027394,25027395,25027396,
--25027397,1551214,1551215,1551216,1551217,1551218,1551219,1551220,1551221,1551312,1551313,1551314,1551315,1551316,1551317,1551318,1551319,1551320,1551199,1551200,1551331,1551332,1551172,
--1551173,1551174,1551175,1551355,1551356,1551357,1551343,1551344,1551345,2076520,2076521,2076522,2076523,2076524,2076530,1552023,25027488,64006770,25027533,25027549,25027534,25027535,
--25027536,25027537,1549408,1551184,1551185,1551186,1551346,1551347,1551348,1551349,1551176,1551333,1551187,1551188,25027481,25027539,25027546,1551177,1551358,1551359,1551360,1551350,
--1551351,1549701,1551361,1551352,1551362,1551189,1545127,25027532,1549699,1549700,1551222,1551223,1551201,1551202,1551334,1551337,2076525,1552016,1552017,25027543,25027544,64006774,25027547,
--25027548,64006771,1538442,1545129,64006282,1546909,1551224,1551225,1551226,1551227,1551228,1551229,1551230,1551231,1551232,1551233,1551234,1551235,1551236,1551237,1551238,1551239,1551240,
--1551241,1551242,1551243,1551244,1551245,1551246,1551247,1551248,1551249,1551250,1551251,1551252,1551253,1551254,1551255,1551256,1551257,1551258,1551321,1551322,1551323,1551324,1551325,1551326,
--1551327,1551328,1551329,1551330,1551203,1551335,1551336,1551178,1551179,1551180,1551181,1551363,1551364,1551190,1551191,1551353,1551354,2076526,2076527,1552024,1552014,1552015,25027506,
--25027538,64006775,64006772,25027545,64006776,25027388,25027389,25027390,25027391,25027540,64006773,1551259,25027541,25027542,25027530,25027531,25027550)




--update ContasReceber set vencimentooriginal = datavencimento where ContasReceber.CodContasReceber IN (88003121,88003122,88003123,88003124,88003125,88003126,88003127,1549591,1549758,
--2076376,1550104,1551291,1551292,1551293,1551878,1552083,1552147,1552150,1552312,2076606,2076619,2076626,2076633,1552695,1552696,1552697,1552698,1552699,1552700,1552701,1552702,1552703,
--1552704,1552836,1552849,1552850,53121096,53121184,53121185,1548628,1550107,1551309,2076627,1552705,1552706,1552707,1552708,1552709,1552710,1552711,1552712,1552713,1552714,1552715,1552716,
--1552717,1552718,1552719,1552720,1552837,1552838,1552839,1552980,64006792,1550310,1552078,1552148,1552151,1552981,2076379)

--update ContasReceber set datavencimento = '2023-11-09' where ContasReceber.CodContasReceber IN (88003121,88003122,88003123,88003124,88003125,88003126,88003127,1549591,1549758,
--2076376,1550104,1551291,1551292,1551293,1551878,1552083,1552147,1552150,1552312,2076606,2076619,2076626,2076633,1552695,1552696,1552697,1552698,1552699,1552700,1552701,1552702,1552703,
--1552704,1552836,1552849,1552850,53121096,53121184,53121185,1548628,1550107,1551309,2076627,1552705,1552706,1552707,1552708,1552709,1552710,1552711,1552712,1552713,1552714,1552715,1552716,
--1552717,1552718,1552719,1552720,1552837,1552838,1552839,1552980,64006792,1550310,1552078,1552148,1552151,1552981,2076379)

--Voltar
--update ContasReceber set datavencimento = vencimentooriginal  where ContasReceber.CodContasReceber IN (88003121,88003122,88003123,88003124,88003125,88003126,88003127,1549591,1549758,
--2076376,1550104,1551291,1551292,1551293,1551878,1552083,1552147,1552150,1552312,2076606,2076619,2076626,2076633,1552695,1552696,1552697,1552698,1552699,1552700,1552701,1552702,1552703,
--1552704,1552836,1552849,1552850,53121096,53121184,53121185,1548628,1550107,1551309,2076627,1552705,1552706,1552707,1552708,1552709,1552710,1552711,1552712,1552713,1552714,1552715,1552716,
--1552717,1552718,1552719,1552720,1552837,1552838,1552839,1552980,64006792,1550310,1552078,1552148,1552151,1552981,2076379)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--#11495 - Alterar vencimentos

--update ContasReceber set vencimentooriginal = datavencimento where ContasReceber.CodContasReceber IN (1538614,2075205,2075206,2075207,2075208,2075209,2075210,2075211,2075212,2075213,1539430,1541964,1541965,1541966,1541967,1541968,1541969,1541970,1541971,1541972,1541973,
--1541974,1541975,1541976,1541977,1541978,1541979,1541980,1541981,1541982,1541983,1541984,1541985,1541986,1541987,1542074,1542120,1542121,1542122,1542123,1542124,1542125,
--1542126,1542127,1542128,1542129,1542130,1542131,1542132,1542133,1542134,1542135)

--update ContasReceber set datavencimento = '2023-09-11' where ContasReceber.CodContasReceber IN (1538614,2075205,2075206,2075207,2075208,2075209,2075210,2075211,2075212,2075213,1539430,1541964,1541965,1541966,1541967,1541968,1541969,1541970,1541971,1541972,1541973,
--1541974,1541975,1541976,1541977,1541978,1541979,1541980,1541981,1541982,1541983,1541984,1541985,1541986,1541987,1542074,1542120,1542121,1542122,1542123,1542124,1542125,
--1542126,1542127,1542128,1542129,1542130,1542131,1542132,1542133,1542134,1542135)

--update ContasReceber set datavencimento = vencimentooriginal  where ContasReceber.CodContasReceber IN (1538614,2075205,2075206,2075207,2075208,2075209,2075210,2075211,2075212,2075213,1539430,1541964,1541965,1541966,1541967,1541968,1541969,1541970,1541971,1541972,1541973,
--1541974,1541975,1541976,1541977,1541978,1541979,1541980,1541981,1541982,1541983,1541984,1541985,1541986,1541987,1542074,1542120,1542121,1542122,1542123,1542124,1542125,
--1542126,1542127,1542128,1542129,1542130,1542131,1542132,1542133,1542134,1542135)