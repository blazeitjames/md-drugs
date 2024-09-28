Config = {}                          --Ignore.

Config.oxtarget = true               --- turn to true if you use oxtarget
Config.respawnTime = 150             -- Seconds
Config.Fuel = "ox_fuel"              -- type the name of script you use i.e. ps-fuel, cdn-fuel, LegacyFuel
Config.TierSystem = false             -- allows for three tiers of certain drugs ( coke, heroin, crack, lsd)
Config.StupidassNewQbItemName = true -- true if you have updated your items.lua from base qb after november 2023 because changing item names this far in a framework is 3 IQ points total
Config.RequestModelTime = 30000      -- if you need more time than this, uhhhh wow

----------------------------------- TierSystem levels ** ONLY IN USE IF CONFIG.TIERSYTEM IS TRUE
Config.Tier1 = 100 -- amount to hit for level 2
Config.Tier2 = 300 -- amount to hit for level 3

---------------------------------- BRIDGE
Config.progressbartype = 'oxcir' -- either 'qb', 'oxcir', 'oxbar'
Config.minigametype = 'ox'       -- either 'ps' or 'ox' or 'none'
Config.Notify = 'ox'             -- -- either 'qb' or 'ox' or 'okok'
Config.Phone = 'lb'              -- either 'qb' or 'yflip' or 'qs'
Config.Dispatch = 'ps'           -- either 'ps', 'cd', 'core', 'aty'

------------- you can either set a gang or leave it blank, if blank it will autopopulate data to not require it :)
------------- Cocaine -- new animations require to be in a certain spot or they get fucky. uses bob74 ipl if you turn Config.FancyCokeAnims you can put it anywhere :)
Config.FancyCokeAnims = false                           -- if you want multi location this needs to be false

Config.CokeTeleIn = vec3(327.11, -1258.47, 32.11)    -- where you target to go inside

Config.CokeTeleOut = vector3(1088.81, -3187.57, -38.99) -- where you target to leave

Config.MakePowder = {                                   -- where you chop your coca leaves to make powder
    { loc = vector3(1086.20, -3195.30, -39.20), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}
Config.CuttingCoke = { -- only active if Config.FancyCokeAnims = false
    { loc = vector3(1095.66, -3195.4, -39.13), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}
Config.BaggingCoke = { -- only active if Config.FancyCokeAnims = false
    { loc = vector3(1100.34, -3199.44, -39.19), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}
---------------- Crack locations
Config.makecrack = { -- make crack with baking soda with cut coke 1-3
    { loc = vector3(2434.07, 4969.39, 42.35), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.bagcrack = { ---  bag crack 1-3 stages
    { loc = vector3(2435.85, 4965.3, 42.35), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}
------------------------- LSD Locations
Config.lysergicacid = { -- get lysergic acid
    { loc = vector3(-1381.21, -327.75, 39.85), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
    { loc = vector3(2405.53, 5008.39, 46.02),  l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.diethylamide = { -- get diethylamide
    { loc = vector3(-1371.71, -316.02, 39.53), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
    { loc = vector3(2408.38, 5011.18, 46.08),  l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.gettabs = { -- buy tab paper
    { loc = vector3(-1370.77, -314.51, 39.58), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
    { loc = vector3(2409.59, 5012.45, 46.09),  l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.buylsdlabkit = vec4(1960.77, 5184.85, 47.92, 268.38) --  buy lab kit
Config.tabcost = 5                                            -- price per piece of tab paper event does 10 at a time
Config.lsdlabkitcost = 2000                                    -- price of the lsd lab kit
------------------------- Heroin Locations

Config.dryplant = { -- turn resin into powder
    { loc = vec3(-112.05, -7.92, 70.52), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.cutheroinone = { -- cut heroin stage 1-3 with baking soda
    { loc = vec3(-110.8, -6.44, 70.52), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.fillneedle = { -- fill needles with heroin
    { loc = vec3(-109.15, -7.58, 70.52), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.buyheroinlabkit = vec4(-110.59, -14.87, 70.52, 339.06) -- buy heroin lab kit
Config.heroinlabkitprice = 2000                              -- price of the lsd lab kit

------------ XTC
Config.isosafrole = { -- where to steal isosafrole
    { loc = vector3(844.39, -902.92, 25.42), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.mdp2p = { -- where to steal mdp2p
    { loc = vector3(844.4, -898.79, 25.23), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.rawxtcloc = { --  where to combine the 2 ingridents to make raw xtc
    { loc = vector3(844.71, -910.33, 25.37), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.stamp = { --  where to stamp pills
    { loc = vector3(844.71, -900.56, 25.43), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.buypress = vector3(845.82, -884.79, 25.18) --  Where you buy your presses

----- mescaline
Config.DryOut = vec3(2603.63, 4229.19, 42.51) -- Place to dry out mescaline into usuable drug
Config.Badtrip = 20                            -- number means % chance to spawn a clone that chases and attacks while on mescaline


-------------- lean
Config.SyrupVendor = vec4(-68.13, -1208.62, 28.12, 312.96) -- where the mission ped starts

Config.StartLoc = {
    vector3(-2307.22, 434.77, 174.47), -- where the truck spawns
    vector3(614.75, 1786.26, 199.39),
    vector3(-224.89, 6388.32, 31.59)
}


---------- Pharma

Config.FillPrescription = { ---------- this is where you want people to take their prescription to get a bottle of pills. They use bottle to get a random amount of prescription pills
    { loc = vector3(2432.89, 4252.2, 36.35), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

Config.PharmaJob = "ems" -- what TYPE role you need to be on to get the command


-------------- weed
Config.Teleout = vector3(1066.31, -3183.36, -39.16)    -- where you target to tele in
Config.Telein = vec3(-197.6, -1699.94, 33.49)       -- where you target to tele out
Config.MakeButter = vector3(1045.48, -3198.49, -38.22) -- where you make cannabutter and baked edibles
Config.MakeOil = vector3(1038.90, -3198.66, -38.17 - 1) -- where you make shatter
Config.WeedSaleman = vector4(1030.46, -3203.63, -38.2, 180.0)

Config.WeedDry = { -- where you dry leaves
    vector3(1043.0, -3191.59, -38.39),
    vector3(1041.0, -3191.59, -38.39),
    vector3(1045.0, -3191.59, -38.39),
    vector3(1039.0, -3191.59, -38.39),
}

Config.Joblock = false -- if you want weed to be a job
Config.weedjob = ""    -- what the job name is
Config.Weed = {        --- this is the store for the weed ingridients
    label = "Weed Shop",
    slots = 8,
    items = {
        { name = "weedgrinder", price = 25, amount = 50, },
        { name = "mdbutter",    price = 25, amount = 50, },
        { name = "flour",       price = 25, amount = 50, },
        { name = "chocolate",   price = 25, amount = 50, },
        { name = "butane",      price = 25, amount = 50, },
        { name = "butanetorch", price = 2,  amount = 1000, },
        { name = "dabrig",      price = 2,  amount = 1000, },
        { name = "mdwoods",     price = 2,  amount = 1000, },
    }
}

----------------- Wholesale
Config.SuccessfulChance = 90          --- this is the chance of a Success wholesale 1-100
Config.AlertPoliceWholesale = 90      -- 1-100 of how often it will alert police
Config.WholesaleTimeout = 600         -- time in seconds to get to the location
Config.PoliceCount = 0                -- Amount of police required
Config.Wcoke = { min = 20, max = 60 } -- pricings per item
Config.Wcrack = { min = 20, max = 60 }
Config.Wlsd = { min = 20, max = 60 }
Config.WXTC = { min = 20, max = 60 }


--- travelling merchant

Config.Travellingmerchant = { ------------ these are the random locations the merchant can spawn on script start. whatever you want for the merchant is in Config.Items right below
    vector4(-119.66, -977.43, 304.25, 88.21),
    vector4(-1522.93, 1476.01, 111.45, 41.25),
    vector4(-3278.98, 973.38, 5.35, 101.53),
}
Config.Items = { --- this is the store for the travelling merchant
    items = {
        [1] = { name = "tab_paper", price = 50, amount = 50, },
        [2] = { name = "bakingsoda", price = 2, amount = 50, },
        [3] = { name = "isosafrole", price = 25, amount = 50, },
        [4] = { name = "mdp2p", price = 25, amount = 50, },
        [5] = { name = "lysergic_acid", price = 25, amount = 50, },
        [6] = { name = "diethylamide", price = 25, amount = 50, },
        [7] = { name = "lockpick", price = 2, amount = 1000, },
        [8] = { name = "emptyvial", price = 2, amount = 1000, },
        [9] = { name = "needle", price = 2, amount = 1000, },
        [10] = { name = "cokeburner", price = 25, amount = 50, },
        [11] = { name = "crackburner", price = 2, amount = 50, },
        [12] = { name = "lsdburner", price = 2, amount = 50, },
        [13] = { name = "heroinburner", price = 2, amount = 50, },
        [14] = { name = "mdlean", price = 50, amount = 50, },
        [15] = { name = "weedgrinder", price = 25, amount = 50, },
        [16] = { name = "mdbutter", price = 25, amount = 50, },
        [17] = { name = "flour", price = 25, amount = 50, },
        [18] = { name = "chocolate", price = 25, amount = 50, },
        [19] = { name = "butane", price = 25, amount = 50, },
        [20] = { name = "butanetorch", price = 2, amount = 1000, },
        [21] = { name = "dabrig", price = 2, amount = 1000, },
        [22] = { name = "mdwoods", price = 2, amount = 1000, },
        [23] = { name = "leancup", price = 25, amount = 50, },
        [24] = { name = "xtcburner", price = 25, amount = 50, },

    }
}
--------------------------------------- oxy runs
---- How oxyruns work. You pay for a truck, you get in it and it gives a route. There is a 20% chance that the car will be "hot" and you have to ditch it. No Routes will spawn if that pops up
----- when you get to the drop off point third eye the truck. You will carry a box to the ped. He will give you cash, some oxy and maybe a random item. Rinse and repeat


Config.truckspawn = vector4(1449.65, -1486.0, 63.22, 342.58) --- where the truck will spawn when you pay for it
Config.Payfortruck = vector3(1437.64, -1491.91, 63.62)       --- where you pay for the truck
Config.TruckPrice = 500                                      -- amount the truck will cost to rent
Config.OxyRunCompleteCash = 350                              -- base price you get for completeing a run. 50% if the car needs to be ditched
Config.OxyRunDitchChance = 20                                -- % of a fail mission and having to ditch the car and not get a new order
Config.OxyItemChance = 50                                    -- chance to recieve an item from the OxyRandItems list below
Config.OxyItemAmount = 1                                     -- amount of the item you recieve when you get an item from OxyRandItems
Config.PoliceAlertOxy = 90                                   -- This is a % out of 100 to alert police

Config.oxylocations = {                                      -- These are different locations where a ped spawns.
    vector4(-2352.32, 266.78, 165.3, 23.46),
    vector4(-1467.49, 874.01, 183.59, 298.45),
    vector4(-856.71, 874.26, 202.85, 205.3),
    vector4(950.58, -128.49, 74.42, 205.3),
    vector4(1152.71, -328.43, 69.21, 205.3),
    vector4(112.66, -1955.67, 20.75, 37.94),
    vector4(-544.4, -1684.8, 19.89, 252.07),
    vector4(-1185.02, -1805.4, 3.91, 184.83),
    vector4(-1641.4, -981.99, 7.58, 35.38),
    vector4(-1827.93, 782.36, 138.29, 219.99),
    vector4(-320.84, 2818.73, 59.45, 337.22),
    vector4(474.88, 2609.56, 44.48, 357.0),
}

Config.OxyRandItems = { -- random items you get for completing the mission
    "oxy",
    "lockpick",
    "cryptostick",
}


---------------------- Meth Config
Config.MethTeleIn = vec3(-723.41, -1112.64, 10.65)       -- where you target to tele in
Config.MethTeleOut = vector3(996.91, -3200.83, -36.39)     -- where you target to tele out
Config.MethHeist = true
Config.MethHeistStart = vector3(-1102.93, -3066.76, 14.00) -- where you get the mission to get ingridients if meth heist = true
Config.MethEph = {
    { loc = vector3(3559.86, 3673.9, 28.13), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}
Config.Methace = {
    { loc = vector3(3535.41, 3661.05, 28.12), l = 1.0, w = 1.0, rot = 45.0, gang = "" },
}

----------------------------- these are the locations where props will be spawned to be picked
Config.CocaPlant = {
    { location = vec3(837.2, 1307.42, 362.7),   heading = 334.49, model = "prop_plant_01a" },
    { location = vec3(837.58, 1302.1, 362.9),   heading = 329.56, model = "prop_plant_01a" },
    { location = vec3(838.75, 1296.65, 363.29), heading = 25.16,  model = "prop_plant_01a" },
    { location = vec3(835.34, 1295.96, 362.99), heading = 21.52,  model = "prop_plant_01a" },
    { location = vec3(830.8, 1294.36, 363.1),   heading = 202.97, model = "prop_plant_01a" },
    { location = vec3(824.49, 1294.58, 362.99), heading = 202.97, model = "prop_plant_01a" },
    { location = vec3(820.59, 1300.06, 362.62), heading = 202.97, model = "prop_plant_01a" },
    { location = vec3(821.61, 1304.77, 362.5),  heading = 202.97, model = "prop_plant_01a" },
    { location = vec3(817.66, 1313.71, 361.93), heading = 202.97, model = "prop_plant_01a" },
    { location = vec3(820.41, 1319.59, 361.52), heading = 202.97, model = "prop_plant_01a" },
    { location = vec3(823.61, 1328.52, 360.22), heading = 202.97, model = "prop_plant_01a" },
    { location = vec3(812.16, 1326.16, 360.24), heading = 202.97, model = "prop_plant_01a" },
    { location = vec3(804.76, 1318.9, 360.97),  heading = 202.97, model = "prop_plant_01a" },
    { location = vec3(803.95, 1310.87, 361.1),  heading = 202.97, model = "prop_plant_01a" },
}

Config.WeedPlant = {
    --[[{ location = vector3(1049.63, -3202.12, -39.15), heading = 334.49, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1050.85, -3202.15, -39.15), heading = 329.56, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1052.01, -3202.22, -39.13), heading = 25.16,  model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1052.99, -3202.15, -39.15), heading = 21.52,  model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1053.08, -3201.11, -39.13), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1052.91, -3199.99, -39.14), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1053.02, -3198.97, -39.11), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1051.95, -3198.93, -39.11), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1051.96, -3199.86, -39.12), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1051.93, -3201.17, -39.12), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1050.98, -3201.13, -39.14), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1050.89, -3200.07, -39.12), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1050.89, -3198.95, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1049.72, -3198.95, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1049.98, -3200.1, -39.14),  heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1049.82, -3201.01, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1053.07, -3194.51, -39.15), heading = 334.49, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1052.97, -3195.55, -39.15), heading = 329.56, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1052.82, -3196.58, -39.15), heading = 25.16,  model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1052.94, -3197.59, -39.15), heading = 21.52,  model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1051.92, -3197.54, -39.14), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1051.88, -3196.61, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1051.82, -3195.52, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1051.95, -3194.38, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1050.88, -3194.31, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1050.78, -3195.29, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1050.76, -3196.49, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1050.77, -3197.62, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1049.64, -3197.61, -39.14), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1049.64, -3196.59, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1049.62, -3195.51, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },
    { location = vector3(1049.66, -3194.36, -39.15), heading = 202.97, model = "bkr_prop_weed_lrg_01b" },]]
}


Config.PoppyPlants = {
    { location = vec3(1968.95, 4979.94, 42.43) - vec3(0, 0, 1.3),  heading = 334.49, model = "prop_plant_01b" },
    { location = vec3(1969.5, 4984.95, 42.24) - vec3(0, 0, 1.3),  heading = 329.56, model = "prop_plant_01b" },
    { location = vec3(1978.58, 4979.62, 42.07) - vec3(0, 0, 1.3),  heading = 25.16,  model = "prop_plant_01b" },
    { location = vec3(1982.39, 4984.98, 41.85) - vec3(0, 0, 1.3), heading = 21.52,  model = "prop_plant_01b" },
    { location = vec3(1974.75, 4991.85, 42.02) - vec3(0, 0, 1.3), heading = 334.49, model = "prop_plant_01b" },
    { location = vec3(1967.51, 4997.46, 42.03) - vec3(0, 0, 1.3),  heading = 329.56, model = "prop_plant_01b" },
    { location = vec3(1977.03, 4985.62, 41.99) - vec3(0, 0, 1.3), heading = 25.16,  model = "prop_plant_01b" },
    { location = vec3(1973.52, 4979.72, 42.34) - vec3(0, 0, 1.3), heading = 21.52,  model = "prop_plant_01b" },
    { location = vec3(1972.82, 4973.89, 42.57) - vec3(0, 0, 1.3), heading = 334.49, model = "prop_plant_01b" },
    { location = vec3(1982.66, 4992.51, 41.71) - vec3(0, 0, 1.3), heading = 329.56, model = "prop_plant_01b" },
    { location = vec3(1975.82, 4999.54, 41.74) - vec3(0, 0, 1.3), heading = 25.16,  model = "prop_plant_01b" },
    { location = vec3(1988.49, 4999.21, 41.53) - vec3(0, 0, 1.3), heading = 21.52,  model = "prop_plant_01b" },
    { location = vec3(1987.7, 4982.9, 41.73) - vec3(0, 0, 1.3),  heading = 21.52,  model = "prop_plant_01b" },
}

Config.shrooms = {
    { location = vec3(2460.27, 3770.75, 41.34) - vec3(0, 0, 1.0), heading = 334.49, model = "mushroom" },
    { location = vec3(2460.59, 3777.08, 41.33) - vec3(0, 0, 1.0), heading = 329.56, model = "mushroom" },
    { location = vec3(2468.12, 3790.5, 40.71) - vec3(0, 0, 1.0),  heading = 25.16,  model = "mushroom" },
    { location = vec3(2478.28, 3796.67, 40.88) - vec3(0, 0, 1.0), heading = 21.52,  model = "mushroom" },
    { location = vec3(2477.16, 3789.27, 41.27) - vec3(0, 0, 1.0), heading = 334.49, model = "mushroom" },
    { location = vec3(2476.61, 3776.29, 41.56) - vec3(0, 0, 1.0),  heading = 329.56, model = "mushroom" },
    { location = vec3(2468.96, 3774.7, 41.36) - vec3(0, 0, 1.0), heading = 25.16,  model = "mushroom" },
    { location = vec3(2468.11, 3765.83, 41.59) - vec3(0, 0, 1.0), heading = 21.52,  model = "mushroom" },
    { location = vec3(2477.58, 3765.95, 41.47) - vec3(0, 0, 1.0), heading = 334.49, model = "mushroom" },
    { location = vec3(2476.13, 3758.67, 41.63) - vec3(0, 0, 1.0),  heading = 329.56, model = "mushroom" },
    { location = vec3(2491.48, 3765.53, 42.09) - vec3(0, 0, 1.0),  heading = 25.16,  model = "mushroom" },
    { location = vec3(2489.29, 3770.31, 44.29) - vec3(0, 0, 1.0), heading = 21.52,  model = "mushroom" },
    { location = vec3(2499.72, 3760.46, 44.49) - vec3(0, 0, 1.0),  heading = 21.52,  model = "mushroom" },
    { location = vec3(2499.72, 3760.46, 44.49) - vec3(0, 0, 1.0), heading = 21.52,  model = "mushroom" },
    { location = vec3(2486.72, 3800.77, 40.9) - vec3(0, 0, 1.0), heading = 21.52,  model = "mushroom" },
    { location = vec3(2498.79, 3793.44, 47.47) - vec3(0, 0, 1.0),  heading = 21.52,  model = "mushroom" },
    { location = vec3(2497.73, 3784.17, 48.01) - vec3(0, 0, 1.0), heading = 21.52,  model = "mushroom" },
}

Config.Mescaline = {
    { location = vec3(1022.68, 3291.96, 35.8) + vec3(0, 0, -1.3), heading = 334.49, model = "prop_cactus_03" },
    { location = vec3(1030.05, 3297.79, 36.37) + vec3(0, 0, -1.3), heading = 329.56, model = "prop_cactus_03" },
    { location = vec3(1025.81, 3285.77, 36.5) + vec3(0, 0, -1.3), heading = 25.16,  model = "prop_cactus_03" },
    { location = vec3(1030.89, 3288.38, 36.06) + vec3(0, 0, -1.3),  heading = 21.52,  model = "prop_cactus_03" },
    { location = vec3(1035.55, 3300.82, 36.12) + vec3(0, 0, -1.3), heading = 334.49, model = "prop_cactus_03" },
    { location = vec3(1039.87, 3297.49, 35.57) + vec3(0, 0, -1.3),  heading = 329.56, model = "prop_cactus_03" },
    { location = vec3(1038.64, 3287.91, 36.24) + vec3(0, 0, -1.3), heading = 25.16,  model = "prop_cactus_03" },
    { location = vec3(1032.44, 3281.25, 36.66) + vec3(0, 0, -1.3), heading = 21.52,  model = "prop_cactus_03" },
    { location = vec3(1023.72, 3279.05, 36.71) + vec3(0, 0, -1.3), heading = 334.49, model = "prop_cactus_03" },
    { location = vec3(1015.2, 3282.93, 37.25) + vec3(0, 0, -1.3), heading = 329.56, model = "prop_cactus_03" },
    { location = vec3(1009.84, 3291.06, 38.39) + vec3(0, 0, -1.3),  heading = 25.16,  model = "prop_cactus_03" },
    { location = vec3(1013.69, 3301.36, 37.79) + vec3(0, 0, -1.3),  heading = 21.52,  model = "prop_cactus_03" },
    { location = vec3(1030.25, 3306.71, 37.65) + vec3(0, 0, -1.3), heading = 21.52,  model = "prop_cactus_03" },
    { location = vec3(1040.52, 3305.58, 36.59) + vec3(0, 0, -1.3),  heading = 21.52,  model = "prop_cactus_03" },
    { location = vec3(1043.38, 3298.68, 35.46) + vec3(0, 0, -1.3), heading = 21.52,  model = "prop_cactus_03" },
    { location = vec3(1043.32, 3288.51, 36.6) + vec3(0, 0, -1.3),  heading = 21.52,  model = "prop_cactus_03" },
    { location = vec3(1040.39, 3278.05, 37.07) + vec3(0, 0, -1.3), heading = 21.52,  model = "prop_cactus_03" },
}
