local SIGNAL_HP = "hp"
local SIGNAL_SH = "sh"
local SIGNAL_ERS = "ers"

local WEICHE_GERADE = 0
local WEICHE_ABZW = 1

-- Richtung: r = nach rechts, l = nach links
signale = {
    -- Hauptsignale
    ["A"]    = {x = 09,  y = 10, richtung = "r",
        stelle_hp  = {pc = "signale", au = "right", fb = 0},
        stelle_ers = {pc = "signale", au = "left",   fb = 0},
        haltAbschnitte = {"012"},
    },
    ["AA"]   = {x = 09,  y = 08,  richtung = "r",
        stelle_hp  = {pc = "signale", au = "right", fb = 1},
        stelle_ers = {pc = "signale", au = "left",   fb = 1},
        haltAbschnitte = {"013"},
    },
    ["B"]    = {x = 09, y = 04,  richtung = "r",
        stelle_hp  = {pc = "signale", au = "right", fb = 2},
        stelle_ers = {pc = "signale", au = "left",   fb = 2},
        haltAbschnitte = {"015"},
    },
    ["F"]    = {x = 69, y = 08,  richtung = "l",
        stelle_hp  = {pc = "signale", au = "right", fb = 3},
        stelle_ers = {pc = "signale", au = "left",   fb = 3},
        haltAbschnitte = {"023"},
    },
    ["FF"]   = {x = 69, y = 10, richtung = "l",
        stelle_hp  = {pc = "signale", au = "right", fb = 4},
        stelle_ers = {pc = "signale", au = "left",   fb = 4},
        haltAbschnitte = {"022"},
    },
    ["G"]    = {x = 69, y = 02,  richtung = "l",
        stelle_hp  = {pc = "signale", au = "right", fb = 5},
        stelle_ers = {pc = "signale", au = "left",   fb = 5},
        haltAbschnitte = {"026"},
    },
    ["N1"]   = {x = 45, y = 12, richtung = "r",
        stelle_hp  = {pc = "signale", au = "right", fb = 7},
        stelle_sh  = {pc = "signale", au = "top",  fb = 7},
        stelle_ers = {pc = "signale", au = "left",   fb = 7},
    },
    ["N2"]   = {x = 45, y = 10, richtung = "r",
        stelle_hp  = {pc = "signale", au = "right", fb = 8},
        stelle_sh  = {pc = "signale", au = "top",  fb = 8},
        stelle_ers = {pc = "signale", au = "left",   fb = 8},
    },
    ["N4"]   = {x = 45, y = 06,  richtung = "r",
        stelle_hp  = {pc = "signale", au = "right", fb = 9},
        stelle_sh  = {pc = "signale", au = "top",  fb = 9},
        stelle_ers = {pc = "signale", au = "left",   fb = 9},
    },
    ["N5-6"] = {x = 55, y = 02,  richtung = "r",
        stelle_hp  = {pc = "signale", au = "right", fb = 10},
        stelle_sh  = {pc = "signale", au = "top",  fb = 10},
        stelle_ers = {pc = "signale", au = "left",   fb = 10},
    },
    ["P1"]   = {x = 32, y = 12, richtung = "l",
        stelle_hp  = {pc = "signale", au = "right", fb = 11},
        stelle_sh  = {pc = "signale", au = "top",  fb = 11},
        stelle_ers = {pc = "signale", au = "left",   fb = 11},
    },
    ["P3"]   = {x = 32, y = 08,  richtung = "l",
        stelle_hp  = {pc = "signale", au = "right", fb = 12},
        stelle_sh  = {pc = "signale", au = "top",  fb = 12},
        stelle_ers = {pc = "signale", au = "left",   fb = 12},
    },
    ["P4"]   = {x = 32, y = 06,  richtung = "l",
        stelle_hp  = {pc = "signale", au = "right", fb = 13},
        stelle_sh  = {pc = "signale", au = "top",  fb = 13},
        stelle_ers = {pc = "signale", au = "left",   fb = 13},
    },
    ["P5"]   = {x = 32, y = 04,  richtung = "l",
        stelle_hp  = {pc = "signale", au = "right", fb = 14},
        stelle_sh  = {pc = "signale", au = "top",  fb = 14},
        stelle_ers = {pc = "signale", au = "left",   fb = 14},
    },
    ["P6"]   = {x = 32, y = 02,  richtung = "l",
        stelle_hp  = {pc = "signale", au = "right", fb = 15},
        stelle_sh  = {pc = "signale", au = "top",  fb = 15},
        stelle_ers = {pc = "signale", au = "left",   fb = 15},
    },
    
    -- Sperrsignale
    ["L003X"] = {x = 46,  y = 08, richtung = "r",
        stelle_sh = {pc = "signale", au = "bottom", fb = 0},
    },
    ["L005X"] = {x = 46,  y = 04, richtung = "r",
        stelle_sh = {pc = "signale", au = "bottom", fb = 1},
    },
    ["L006X"] = {x = 46,  y = 02, richtung = "r",
        stelle_sh = {pc = "signale", au = "bottom", fb = 2},
    },
    ["L011X"] = {x = 24,  y = 12, richtung = "r",
        stelle_sh = {pc = "signale", au = "bottom", fb = 8},
    },
    ["L012X"] = {x = 17,  y = 10, richtung = "r",
        stelle_sh = {pc = "signale", au = "bottom", fb = 3},
    },
    ["L013X"] = {x = 17,  y = 08, richtung = "r",
        stelle_sh = {pc = "signale", au = "bottom", fb = 4},
    },
    ["L015X"] = {x = 17,  y = 04, richtung = "r",
        stelle_sh = {pc = "signale", au = "bottom", fb = 5},
    },
    ["L002Y"] = {x = 32,  y = 10, richtung = "l",
        stelle_sh = {pc = "signale", au = "bottom", fb = 6},
    },
    ["L022Y"] = {x = 62,  y = 10, richtung = "l",
        stelle_sh = {pc = "signale", au = "bottom", fb = 7},
    },
    ["L026Y"] = {x = 62,  y = 02, richtung = "l",
        stelle_sh = {pc = "signale", au = "bottom", fb = 9},
    },
}

fsZiele = {
    ["SH"]  = {x = 01, y = 04, laenge = 7},
    ["SF"]  = {x = 01, y = 08, laenge = 7},
    ["SFG"] = {x = 01, y = 10, laenge = 7},
    ["EH"]  = {x = 69, y = 02, laenge = 7},
    ["TLG"] = {x = 69, y = 08, laenge = 7},
    ["TL"]  = {x = 69, y = 10, laenge = 7},
    ["011"] = {x = 18, y = 12, laenge = 4},
    ["012"] = {x = 12, y = 10, laenge = 4},
    ["013"] = {x = 12, y = 08, laenge = 4},
    ["015"] = {x = 12, y = 04, laenge = 4},
    ["022"] = {x = 64, y = 10, laenge = 4},
    ["026"] = {x = 64, y = 02, laenge = 4},
    
}

fsAufloeser = {
    ["012A"] = {pc = "weiche+belegung", au = "top", fb = 0},
    ["013A"] = {pc = "weiche+belegung", au = "top", fb = 1},
    ["015A"] = {pc = "weiche+belegung", au = "top", fb = 2},
    ["022A"] = {pc = "weiche+belegung", au = "top", fb = 3},
    ["023A"] = {pc = "weiche+belegung", au = "top", fb = 4},
    ["026A"] = {pc = "weiche+belegung", au = "top", fb = 5},
    ["001O"] = {pc = "weiche+belegung", au = "top", fb = 6},
    ["002O"] = {pc = "weiche+belegung", au = "top", fb = 7},
    ["003O"] = {pc = "weiche+belegung", au = "top", fb = 8},
    ["004O"] = {pc = "weiche+belegung", au = "top", fb = 9},
    ["001W"] = {pc = "weiche+belegung", au = "top", fb = 10},
    ["002W"] = {pc = "weiche+belegung", au = "top", fb = 11},
    ["003W"] = {pc = "weiche+belegung", au = "top", fb = 12},
    ["004W"] = {pc = "weiche+belegung", au = "top", fb = 13},
}

bahnuebergaenge = {}

gleise = {
    ["W24R"]   = {x = 58, y = 01, pc = "weiche+belegung", au = "bottom", fb = 11, text = "\\"},
    
    ["W22L/2"] = {x = 29, y = 02, pc = "weiche+belegung", au = "bottom", fb = 09, text = "--", weiche = {"W22", WEICHE_ABZW}},
    ["006"]    = {x = 35, y = 02, pc = "weiche+belegung", au = "left",   fb = 05, text = "--- 6 ---"},
    ["W23R"]   = {x = 48, y = 02, pc = "weiche+belegung", au = "bottom", fb = 10, text = "----", weiche = {"W23", WEICHE_GERADE}},
    ["W23"]    = {x = 53, y = 02, pc = "weiche+belegung", au = "bottom", fb = 10, text = "-"},
    ["W24/1"]  = {x = 58, y = 02, pc = "weiche+belegung", au = "bottom", fb = 11, text = "-"},
    ["W24/2"]  = {x = 60, y = 02, pc = "weiche+belegung", au = "bottom", fb = 11, text = "-"},
    ["026"]    = {x = 64, y = 02, pc = "weiche+belegung", au = "left",   fb = 11, text = "-26-"},
    ["EH"]     = {x = 72, y = 02, pc = "block", au = "bottom", fb = 03, text = "->>"},

    ["W22L/1"] = {x = 27, y = 03, pc = "weiche+belegung", au = "bottom", fb = 09, text = "/", weiche = {"W22", WEICHE_ABZW}},
    ["W23L/2"] = {x = 51, y = 03, pc = "weiche+belegung", au = "bottom", fb = 10, text = "/", weiche = {"W23", WEICHE_ABZW}},

    ["SH"]     = {x = 05, y = 04, pc = "block", au = "bottom", fb = 00, text = "<<-"},
    ["015"]    = {x = 12, y = 04, pc = "weiche+belegung", au = "left",   fb = 08, text = "-15-"},
    ["W21"]    = {x = 19, y = 04, pc = "weiche+belegung", au = "bottom", fb = 08, text = "----"},
    ["W21L/1"] = {x = 24, y = 04, pc = "weiche+belegung", au = "bottom", fb = 08, text = "-", weiche = {"W21", WEICHE_GERADE}},
    ["W21L/2"] = {x = 25, y = 04, pc = "weiche+belegung", au = "bottom", fb = 09, text = "-"},
    ["W22R"]   = {x = 27, y = 04, pc = "weiche+belegung", au = "bottom", fb = 09, text = "----", weiche = {"W22", WEICHE_GERADE}},
    ["005"]    = {x = 35, y = 04, pc = "weiche+belegung", au = "left",   fb = 04, text = "--- 5 ---"},
    ["W23L/1"] = {x = 48, y = 04, pc = "weiche+belegung", au = "bottom", fb = 10, text = "--", weiche = {"W23", WEICHE_ABZW}},

    ["W21R/1"] = {x = 24, y = 05, pc = "weiche+belegung", au = "bottom", fb = 08, text = "\\", weiche = {"W21", WEICHE_ABZW}},

    ["W21R/2"] = {x = 26, y = 06, pc = "weiche+belegung", au = "bottom", fb = 02, text = "--", weiche = {"W3/4", WEICHE_GERADE}},
    ["W4"]     = {x = 29, y = 06, pc = "weiche+belegung", au = "bottom", fb = 02, text = "--"},
    ["004"]    = {x = 35, y = 06, pc = "weiche+belegung", au = "left",   fb = 03, text = "--- 4 ---"},
    ["W11R/1"] = {x = 48, y = 06, pc = "weiche+belegung", au = "bottom", fb = 04, text = "--"},
    ["W11L"]   = {x = 51, y = 06, pc = "weiche+belegung", au = "bottom", fb = 04, text = "--", weiche = {"W11/12", WEICHE_GERADE}},

    ["W4L"]    = {x = 27, y = 07, pc = "weiche+belegung", au = "bottom", fb = 02, text = "/", weiche = {"W3/4", WEICHE_ABZW}},
    ["W11R/2"] = {x = 51, y = 07, pc = "weiche+belegung", au = "bottom", fb = 04, text = "\\", weiche = {"W11/12", WEICHE_ABZW}},

    ["SF"]     = {x = 05, y = 08, pc = "block", au = "bottom", fb = 01, text = "<<-"},
    ["013"]    = {x = 12, y = 08, pc = "weiche+belegung", au = "left",   fb = 07, text = "-13-"},
    ["W2R"]    = {x = 19, y = 08, pc = "weiche+belegung", au = "bottom", fb = 01, text = "----", weiche = {"W1/2", WEICHE_GERADE}},
    ["W2"]     = {x = 24, y = 08, pc = "weiche+belegung", au = "bottom", fb = 01, text = "--"},
    ["W3R"]    = {x = 27, y = 08, pc = "weiche+belegung", au = "bottom", fb = 01, text = "----", weiche = {"W3/4", WEICHE_GERADE}},
    ["003"]    = {x = 35, y = 08, pc = "weiche+belegung", au = "left",   fb = 02, text = "--- 3 ---"},
    ["W12L"]   = {x = 48, y = 08, pc = "weiche+belegung", au = "bottom", fb = 05, text = "----", weiche = {"W11/12", WEICHE_GERADE}},
    ["W12"]    = {x = 53, y = 08, pc = "weiche+belegung", au = "bottom", fb = 05, text = "--"},
    ["W15L"]   = {x = 56, y = 08, pc = "weiche+belegung", au = "bottom", fb = 05, text = "-----", weiche = {"W15/16", WEICHE_GERADE}},
    ["023"]    = {x = 62, y = 08, pc = "weiche+belegung", au = "left",   fb = 10, text = "------"},
    ["TLG"]    = {x = 72, y = 08, pc = "block", au = "bottom", fb = 04, text = "->>"},

    ["W1L"]    = {x = 22, y = 09, pc = "weiche+belegung", au = "bottom", fb = 00, text = "/", weiche = {"W1/2", WEICHE_ABZW}},
    ["W15R"]   = {x = 56, y = 09, pc = "weiche+belegung", au = "bottom", fb = 05, text = "\\", weiche = {"W15/16", WEICHE_ABZW}},

    ["SFG"]    = {x = 05, y = 10, pc = "block", au = "bottom", fb = 02, text = "<<-"},
    ["012"]    = {x = 12, y = 10, pc = "weiche+belegung", au = "left",   fb = 06, text = "-12-"},
    ["W1"]     = {x = 19, y = 10, pc = "weiche+belegung", au = "bottom", fb = 00, text = "--"},
    ["W1R"]    = {x = 22, y = 10, pc = "weiche+belegung", au = "bottom", fb = 00, text = "----"},
    ["W5L"]    = {x = 27, y = 10, pc = "weiche+belegung", au = "bottom", fb = 0, text = "----", weiche = {"W5/6", WEICHE_GERADE}},
    ["002"]    = {x = 35, y = 10, pc = "weiche+belegung", au = "left",   fb = 01, text = "--- 2 ---"},
    ["W14R"]   = {x = 48, y = 10, pc = "weiche+belegung", au = "bottom", fb = 07, text = "----", weiche = {"W13/14", WEICHE_GERADE}},
    ["W16L"]   = {x = 53, y = 10, pc = "weiche+belegung", au = "bottom", fb = 07, text = "----"},
    ["W16"]    = {x = 58, y = 10, pc = "weiche+belegung", au = "bottom", fb = 07, text = "---"},
    ["022"]    = {x = 64, y = 10, pc = "weiche+belegung", au = "left",   fb = 09, text = "-22-"},
    ["TL"]     = {x = 72, y = 10, pc = "block", au = "bottom", fb = 05, text = "->>"},

    ["W6R"]    = {x = 27, y = 11, pc = "weiche+belegung", au = "bottom", fb = 03, text = "\\", weiche = {"W5/6", WEICHE_ABZW}},
    ["W13L/2"] = {x = 51, y = 11, pc = "weiche+belegung", au = "bottom", fb = 06, text = "/", weiche = {"W13/14", WEICHE_ABZW}},

    ["011"]    = {x = 19, y = 12, pc = "weiche+belegung", au = "left",   fb = 12, text = "-11-"},
    ["W6L"]    = {x = 26, y = 12, pc = "weiche+belegung", au = "bottom", fb = 03, text = "--", weiche = {"W5/6", WEICHE_GERADE}},
    ["W6"]     = {x = 29, y = 12, pc = "weiche+belegung", au = "bottom", fb = 03, text = "--"},
    ["001"]    = {x = 35, y = 12, pc = "weiche+belegung", au = "left",   fb = 00, text = "--- 1 ---"},
    ["W13L/1"] = {x = 48, y = 12, pc = "weiche+belegung", au = "bottom", fb = 06, text = "--"},
    ["W13R"]   = {x = 51, y = 12, pc = "weiche+belegung", au = "bottom", fb = 06, text = "--", weiche = {"W13/14", WEICHE_GERADE}},
}
weichen = {
    ["W1/2"]   = {pc = "weiche+belegung", au = "right", fb = 0},
    ["W3/4"]   = {pc = "weiche+belegung", au = "right", fb = 1},
    ["W5/6"]   = {pc = "weiche+belegung", au = "right", fb = 2},
    ["W11/12"] = {pc = "weiche+belegung", au = "right", fb = 4},
    ["W13/14"] = {pc = "weiche+belegung", au = "right", fb = 5},
    ["W15/16"] = {pc = "weiche+belegung", au = "right", fb = 6},
    ["W21"]    = {pc = "weiche+belegung", au = "right", fb = 8},
    ["W22"]    = {pc = "weiche+belegung", au = "right", fb = 9},
    ["W23"]    = {pc = "weiche+belegung", au = "right", fb = 12},
    ["W24"]    = {pc = "weiche+belegung", au = "right", fb = 13},
}
fahrstrassenteile = {}
fahrstrassen = {
    ["A.N1"] = {
        gleise = {"012","001"},
        signale = {
            ["A"] = SIGNAL_HP,
            ["L012X"] = SIGNAL_SH,
        },
        haltAbschnitte = {"001"},
        aufloeseAbschn = "001O",
        fsTeile = {"012","W1","W1R","W6R","W6","001"},
        weichen = {"W5/6"},
    },
    ["A.N2"] = {
        gleise = {"012","002"},
        signale = {
            ["A"] = SIGNAL_HP,
            ["L012X"] = SIGNAL_SH,
        },
        haltAbschnitte = {"002"},
        aufloeseAbschn = "002O",
        fsTeile = {"012","W1","W1R","W5L","002"},
        weichen = {},
    },
    ["A.TL"] = {
        gleise = {"012","002"},
        signale = {
            ["A"] = SIGNAL_HP,
            ["N2"] = SIGNAL_HP,
            ["L012X"] = SIGNAL_SH,
        },
        haltAbschnitte = {"022"},
        aufloeseAbschn = "022A",
        fsTeile = {"012","W1","W1R","W5L","002","W14R","W16L","W16","022"},
        weichen = {},
    },
    ["A.L003X"] = {
        gleise = {"012","003"},
        signale = {
            ["A"] = SIGNAL_HP,
            ["L012X"] = SIGNAL_SH,
        },
        haltAbschnitte = {"003"},
        aufloeseAbschn = "003O",
        fsTeile = {"012","W1","W1L","W2","W3R","003"},
        weichen = {"W1/2"},
    },
    ["A.N4"] = {
        gleise = {"012","004"},
        signale = {
            ["A"] = SIGNAL_HP,
            ["L012X"] = SIGNAL_SH,
        },
        haltAbschnitte = {"004"},
        aufloeseAbschn = "004O",
        fsTeile = {"012","W1","W1L","W2","W4L","W4","004"},
        weichen = {"W1/2","W3/4"},
    },
    ["AA.L003X"] = {
        gleise = {"013","003"},
        signale = {
            ["AA"] = SIGNAL_HP,
            ["L013X"] = SIGNAL_SH,
        },
        haltAbschnitte = {"003"},
        aufloeseAbschn = "003O",
        fsTeile = {"013","W2R","W2","W3R","003"},
        weichen = {},
    },
    ["AA.N4"] = {
        gleise = {"013","004"},
        signale = {
            ["AA"] = SIGNAL_HP,
            ["L013X"] = SIGNAL_SH,
        },
        haltAbschnitte = {"004"},
        aufloeseAbschn = "004O",
        fsTeile = {"013","W2R","W2","W4L","W4","004"},
        weichen = {"W3/4"},
    },
    ["B.N4"] = {
        gleise = {"015","004"},
        signale = {
            ["B"] = SIGNAL_HP,
            ["L015X"] = SIGNAL_SH,
        },
        haltAbschnitte = {"004"},
        aufloeseAbschn = "004O",
        fsTeile = {"015","W21","W21R","W4","004"},
        weichen = {"W21"},
    },
    ["B.L005X"] = {
        gleise = {"015","005"},
        signale = {
            ["B"] = SIGNAL_HP,
            ["L015X"] = SIGNAL_SH,
        },
        haltAbschnitte = {"005"},
        fsTeile = {"015","W21","W21L","W22R","005"},
        weichen = {},
    },
    ["B.L006X"] = {
        gleise = {"015","006"},
        signale = {
            ["B"] = SIGNAL_HP,
            ["L015X"] = SIGNAL_SH,
        },
        haltAbschnitte = {"006"},
        fsTeile = {"015","W21","W21L","W22L","006"},
        weichen = {"W22"},
    },
    
    ["F.P3"] = {
        gleise = {"003"},
        signale = {["F"] = SIGNAL_HP},
        haltAbschnitte = {"003"},
        aufloeseAbschn = "003W",
        fsTeile = {"023","W15L","W12","W12L","003"},
        weichen = {},
    },
    ["F.P4"] = {
        gleise = {"004"},
        signale = {["F"] = SIGNAL_HP},
        haltAbschnitte = {"004"},
        aufloeseAbschn = "004W",
        fsTeile = {"023","W15L","W12","W11R","004"},
        weichen = {"W11/12"},
    },
    ["FF.P1"] = {
        gleise = {"001","022"},
        signale = {
            ["FF"] = SIGNAL_HP,
            ["L022Y"] = SIGNAL_SH,
        },
        haltAbschnitte = {"001"},
        aufloeseAbschn = "001W",
        fsTeile = {"022","W16","W16L","W13L","001"},
        weichen = {"W13/14"},
    },
    ["FF.P3"] = {
        gleise = {"003","022"},
        signale = {
            ["FF"] = SIGNAL_HP,
            ["L022Y"] = SIGNAL_SH,
        },
        haltAbschnitte = {"003"},
        aufloeseAbschn = "003W",
        fsTeile = {"022","W16","W15R","W12","W12L","003"},
        weichen = {"W15/16"},
    },
    ["FF.P4"] = {
        gleise = {"004","022"},
        signale = {
            ["FF"] = SIGNAL_HP,
            ["L022Y"] = SIGNAL_SH,
        },
        haltAbschnitte = {"004"},
        aufloeseAbschn = "004W",
        fsTeile = {"022","W16","W15R","W12","W11R","004"},
        weichen = {"W15/16","W11/12"},
    },
    ["G.P5"] = {
        gleise = {"005"},
        signale = {
            ["G"] = SIGNAL_HP,
            ["L026Y"] = SIGNAL_SH,
        },
        haltAbschnitte = {"005"},
        fsTeile = {"026","W24","W23","W23L","005"},
        weichen = {"W23"},
    },
    ["G.P6"] = {
        gleise = {"006"},
        signale = {
            ["G"] = SIGNAL_HP,
            ["L026Y"] = SIGNAL_SH,
        },
        haltAbschnitte = {"006"},
        fsTeile = {"026","W24","W23","W23R","006"},
        weichen = {},
    },
    
    ["N1.TL"] = {
        gleise = {"022"},
        signale = {["N1"] = SIGNAL_HP},
        haltAbschnitte = {"022"},
        aufloeseAbschn = "022A",
        fsTeile = {"022","W16","W16L","W13L"},
        weichen = {"W13/14"},
    },
    ["N4.TL"] = {
        gleise = {"022"},
        signale = {["N4"] = SIGNAL_HP},
        haltAbschnitte = {"022"},
        aufloeseAbschn = "022A",
        fsTeile = {"022","W16","W15R","W12","W11R"},
        weichen = {"W11/12","W15/16"},
    },
    ["N4.TLG"] = {
        signale = {["N4"] = SIGNAL_HP},
        haltAbschnitte = {"023"},
        aufloeseAbschn = "023A",
        fsTeile = {"023","W15L","W12","W11R"},
        weichen = {"W11/12"},
    },
    ["L005X.EH"] = {
        signale = {
            ["L005X"] = SIGNAL_SH,
            ["N5-6"] = SIGNAL_HP,
        },
        haltAbschnitte = {"026"},
        aufloeseAbschn = "026A",
        fsTeile = {"026","W24","W23","W23L"},
        weichen = {"W23"},
    },
    ["L006X.EH"] = {
        signale = {
            ["L006X"] = SIGNAL_SH,
            ["N5-6"] = SIGNAL_HP,
        },
        haltAbschnitte = {"026"},
        aufloeseAbschn = "026A",
        fsTeile = {"026","W24","W23","W23R"},
        weichen = {},
    },
    
    ["P1.SFG"] = {
        gleise = {"012"},
        signale = {["P1"] = SIGNAL_HP},
        haltAbschnitte = {"012"},
        aufloeseAbschn = "012A",
        fsTeile = {"012","W1","W1R","W6R","W6"},
        weichen = {"W5/6"},
    },
    ["P3.SFG"] = {
        gleise = {"012"},
        signale = {["P3"] = SIGNAL_HP},
        haltAbschnitte = {"012"},
        aufloeseAbschn = "012A",
        fsTeile = {"012","W1","W1L","W2","W3R"},
        weichen = {"W1/2"},
    },
    ["P4.SFG"] = {
        gleise = {"012"},
        signale = {["P4"] = SIGNAL_HP},
        haltAbschnitte = {"012"},
        aufloeseAbschn = "012A",
        fsTeile = {"012","W1","W1L","W2","W4L","W4"},
        weichen = {"W1/2","W3/4"},
    },
    ["P3.SF"] = {
        gleise = {"013"},
        signale = {["P3"] = SIGNAL_HP},
        haltAbschnitte = {"013"},
        aufloeseAbschn = "013A",
        fsTeile = {"013","W2R","W2","W3R"},
        weichen = {},
    },
    ["P4.SF"] = {
        gleise = {"013"},
        signale = {["P4"] = SIGNAL_HP},
        haltAbschnitte = {"013"},
        aufloeseAbschn = "013A",
        fsTeile = {"013","W2R","W2","W4L","W4"},
        weichen = {"W3/4"},
    },
    ["P4.SH"] = {
        gleise = {"015"},
        signale = {["P4"] = SIGNAL_HP},
        haltAbschnitte = {"015"},
        aufloeseAbschn = "015A",
        fsTeile = {"015","W21","W21R","W4"},
        weichen = {"W21"},
    },
    ["P5.SH"] = {
        gleise = {"015"},
        signale = {["P5"] = SIGNAL_HP},
        haltAbschnitte = {"015"},
        aufloeseAbschn = "015A",
        fsTeile = {"015","W21","W21L","W22R"},
        weichen = {},
    },
    ["P6.SH"] = {
        gleise = {"015"},
        signale = {["P6"] = SIGNAL_HP},
        haltAbschnitte = {"015"},
        aufloeseAbschn = "015A",
        fsTeile = {"015","W21","W21L","W22L"},
        weichen = {"W22"},
    },
    
    -- Rangierstrassen
    ["L011X-N1"] = {
        rangieren = true,
        signale = {["L011X"] = SIGNAL_SH},
        haltAbschnitte = {"001"},
        aufloeseAbschn = "001O",
        fsTeile = {"W6L","W6","001"},
        weichen = {},
    },
    ["L012X-N1"] = {
        rangieren = true,
        signale = {["L012X"] = SIGNAL_SH},
        haltAbschnitte = {"001"},
        aufloeseAbschn = "001O",
        fsTeile = {"W1","W1R","W6R","W6","001"},
        weichen = {"W5/6"},
    },
    ["L012X-N2"] = {
        rangieren = true,
        signale = {["L012X"] = SIGNAL_SH},
        haltAbschnitte = {"002"},
        aufloeseAbschn = "002O",
        fsTeile = {"W1","W1R","W5L","002"},
        weichen = {},
    },
    ["L012X-L003X"] = {
        rangieren = true,
        signale = {["L012X"] = SIGNAL_SH},
        haltAbschnitte = {"003"},
        aufloeseAbschn = "003O",
        fsTeile = {"W1","W1L","W2","W3R","003"},
        weichen = {"W1/2"},
    },
    ["L012X-N4"] = {
        rangieren = true,
        signale = {["L012X"] = SIGNAL_SH},
        haltAbschnitte = {"004"},
        aufloeseAbschn = "004O",
        fsTeile = {"W1","W1L","W2","W4L","W4","004"},
        weichen = {"W1/2","W3/4"},
    },
    ["L013X-L003X"] = {
        rangieren = true,
        signale = {["L013X"] = SIGNAL_SH},
        haltAbschnitte = {"003"},
        aufloeseAbschn = "003O",
        fsTeile = {"W2R","W2","W3R","003"},
        weichen = {},
    },
    ["L013X-N4"] = {
        rangieren = true,
        signale = {["L013X"] = SIGNAL_SH},
        haltAbschnitte = {"004"},
        aufloeseAbschn = "004O",
        fsTeile = {"W2R","W2","W4L","W4","004"},
        weichen = {"W3/4"},
    },
    ["L015X-N4"] = {
        rangieren = true,
        signale = {["L015X"] = SIGNAL_SH},
        haltAbschnitte = {"004"},
        aufloeseAbschn = "004O",
        fsTeile = {"W21","W21R","W4","004"},
        weichen = {"W21"},
    },
    ["L015X-L005X"] = {
        rangieren = true,
        signale = {["L015X"] = SIGNAL_SH},
        haltAbschnitte = {"005"},
        fsTeile = {"W21","W21L","W22R","005"},
        weichen = {},
    },
    ["L015X-L006X"] = {
        rangieren = true,
        signale = {["L015X"] = SIGNAL_SH},
        haltAbschnitte = {"006"},
        fsTeile = {"W21","W21L","W22L","006"},
        weichen = {"W22"},
    },
    
    ["L022Y-P1"] = {
        rangieren = true,
        signale = {["L022Y"] = SIGNAL_SH},
        haltAbschnitte = {"001"},
        aufloeseAbschn = "001W",
        fsTeile = {"W16","W16L","W13L","001"},
        weichen = {"W13/14"},
    },
    ["L022Y-L002Y"] = {
        rangieren = true,
        signale = {["L022Y"] = SIGNAL_SH},
        haltAbschnitte = {"002"},
        aufloeseAbschn = "002W",
        fsTeile = {"W16","W16L","W14R","002"},
        weichen = {},
    },
    ["L022Y-P3"] = {
        rangieren = true,
        signale = {["L022Y"] = SIGNAL_SH},
        haltAbschnitte = {"003"},
        aufloeseAbschn = "003W",
        fsTeile = {"W16","W15R","W12","W12L","003"},
        weichen = {"W15/16"},
    },
    ["L022Y-P4"] = {
        rangieren = true,
        signale = {["L022Y"] = SIGNAL_SH},
        haltAbschnitte = {"004"},
        aufloeseAbschn = "004W",
        fsTeile = {"W16","W15R","W12","W11R","004"},
        weichen = {"W15/16","W11/12"},
    },
    ["L026Y-P5"] = {
        rangieren = true,
        signale = {["L026Y"] = SIGNAL_SH},
        haltAbschnitte = {"005"},
        fsTeile = {"W24","W23","W23L","005"},
        weichen = {"W23"},
    },
    ["L026Y-P6"] = {
        rangieren = true,
        signale = {["L026Y"] = SIGNAL_SH},
        haltAbschnitte = {"006"},
        fsTeile = {"W24","W23","W23R","006"},
        weichen = {},
    },
    
    ["N1-022"] = {
        rangieren = true,
        signale = {["N1"] = SIGNAL_SH},
        haltAbschnitte = {"022"},
        fsTeile = {"022","W16","W16L","W13L"},
        weichen = {"W13/14"},
    },
    ["N2-022"] = {
        rangieren = true,
        signale = {["N2"] = SIGNAL_SH},
        haltAbschnitte = {"022"},
        fsTeile = {"022","W16","W16L","W14R"},
        weichen = {},
    },
    ["L003X-022"] = {
        rangieren = true,
        signale = {["L003X"] = SIGNAL_SH},
        haltAbschnitte = {"022"},
        fsTeile = {"022","W16","W15R","W12","W12L"},
        weichen = {"W15/16"},
    },
    ["N4-022"] = {
        rangieren = true,
        signale = {["N4"] = SIGNAL_SH},
        haltAbschnitte = {"022"},
        fsTeile = {"022","W16","W15R","W12","W11R"},
        weichen = {"W11/12","W15/16"},
    },
    ["L005X-026"] = {
        rangieren = true,
        signale = {
            ["L005X"] = SIGNAL_SH,
            ["N5-6"] = SIGNAL_SH,
        },
        haltAbschnitte = {"026"},
        fsTeile = {"026","W24","W23","W23L"},
        weichen = {"W23"},
    },
    ["L006X-026"] = {
        rangieren = true,
        signale = {
            ["L006X"] = SIGNAL_SH,
            ["N5-6"] = SIGNAL_SH,
        },
        haltAbschnitte = {"026"},
        fsTeile = {"026","W24","W23","W23R"},
        weichen = {},
    },
    
    ["P1-011"] = {
        rangieren = true,
        signale = {["P1"] = SIGNAL_SH},
        haltAbschnitte = {"011"},
        fsTeile = {"011","W6L","W6"},
        weichen = {},
    },
    ["P1-012"] = {
        rangieren = true,
        signale = {["P1"] = SIGNAL_SH},
        haltAbschnitte = {"012"},
        fsTeile = {"012","W1","W1R","W6R","W6"},
        weichen = {"W5/6"},
    },
    ["L002Y-012"] = {
        rangieren = true,
        signale = {["L002Y"] = SIGNAL_SH},
        haltAbschnitte = {"012"},
        fsTeile = {"012","W1","W1R","W5L"},
        weichen = {},
    },
    ["P3-012"] = {
        rangieren = true,
        signale = {["P3"] = SIGNAL_SH},
        haltAbschnitte = {"012"},
        fsTeile = {"012","W1","W1L","W2","W3R"},
        weichen = {"W1/2"},
    },
    ["P4-012"] = {
        rangieren = true,
        signale = {["P4"] = SIGNAL_SH},
        haltAbschnitte = {"012"},
        fsTeile = {"012","W1","W1L","W2","W4L","W4"},
        weichen = {"W1/2","W3/4"},
    },
    ["P3-013"] = {
        rangieren = true,
        signale = {["P3"] = SIGNAL_SH},
        haltAbschnitte = {"013"},
        fsTeile = {"013","W2R","W2","W3R"},
        weichen = {},
    },
    ["P4-013"] = {
        rangieren = true,
        signale = {["P4"] = SIGNAL_SH},
        haltAbschnitte = {"013"},
        fsTeile = {"013","W2R","W2","W4L","W4"},
        weichen = {"W3/4"},
    },
    ["P4-015"] = {
        rangieren = true,
        signale = {["P4"] = SIGNAL_SH},
        haltAbschnitte = {"015"},
        fsTeile = {"015","W21","W21R","W4"},
        weichen = {"W21"},
    },
    ["P5-015"] = {
        rangieren = true,
        signale = {["P5"] = SIGNAL_SH},
        haltAbschnitte = {"015"},
        fsTeile = {"015","W21","W21L","W22R"},
        weichen = {},
    },
    ["P6-015"] = {
        rangieren = true,
        signale = {["P6"] = SIGNAL_SH},
        haltAbschnitte = {"015"},
        fsTeile = {"015","W21","W21L","W22L"},
        weichen = {"W22"},
    },
}

gleisbildDatei = "gleisbild.txt"
stellwerkName = "Montabau"
bildschirm = "right"
modem = "top"

speichereFahrstrassen = true
