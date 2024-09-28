local QBCore = exports['qb-core']:GetCoreObject()
local CocaPlant = {}
local PoppyPlants = {}
local herointable = false
local function loadParticle(dict)
    if not HasNamedPtfxAssetLoaded(dict) then
        RequestNamedPtfxAsset(dict)
    end
    while not HasNamedPtfxAssetLoaded(dict) do
        Wait(0)
    end
    SetPtfxAssetNextCall(dict)
end
CreateThread(function() 
local Ped = "g_m_y_famdnf_01"
	lib.requestModel("g_m_y_famdnf_01", Config.RequestModelTime)
	local labkitlocation = Config.buyheroinlabkit
	local heroinkitdealer = CreatePed(0, Ped, labkitlocation.x, labkitlocation.y, labkitlocation.z-1, labkitlocation.w, false, false)
    Freeze(heroinkitdealer, true, labkitlocation.w)
    local options = {
        { label = "Buy Heroin Lab Kit ($10,000)", icon = "fas fa-eye", event = "md-drugs:client:buyheroinlabkit", distance = 2.0},
    } 
    if Config.oxtarget then
        exports.ox_target:addLocalEntity(heroinkitdealer, options)
    else
	    exports['qb-target']:AddTargetEntity(heroinkitdealer, { options = options, distance = 2.0})
    end    
end)

---- plant spawns dont edit
RegisterNetEvent('heroin:respawnCane', function(loc)
    local v = GlobalState.PoppyPlants[loc]
    local hash = GetHashKey(v.model)

    if not PoppyPlants[loc] then
        PoppyPlants[loc] = CreateObject(hash, v.location, false, true, true)
        Freeze(PoppyPlants[loc], true, v.heading)
        exports['qb-target']:AddTargetEntity(PoppyPlants[loc], {
            options = { {
                    icon = "fas fa-hand",
                    label = "pick Poppies",
                    action = function()
                       if not progressbar(Lang.Heroin.pick, 4000, 'uncuff') then return end
                        TriggerServerEvent("heroin:pickupCane", loc)
                    end
                }
            },
            distance = 2.5
        })
    end
end)



RegisterNetEvent('heroin:removeCane', function(loc)
    if DoesEntityExist(PoppyPlants[loc]) then DeleteEntity(PoppyPlants[loc]) end
    PoppyPlants[loc] = nil
end)



RegisterNetEvent("heroin:init", function()
    for k, v in pairs (GlobalState.PoppyPlants) do
        local hash = GetHashKey(v.model)
        if not HasModelLoaded(hash) then LoadModel(hash) end
        if not v.taken then
            PoppyPlants[k] = CreateObject(hash, v.location.x, v.location.y, v.location.z, false, true, true)
            Freeze(PoppyPlants[k], true, v.heading)
            exports['qb-target']:AddTargetEntity(PoppyPlants[k], {
                options = { {
                        icon = "fas fa-hand",
                        label = "Pick Poppies",
                        action = function()
                           if not progressbar(Lang.Heroin.pick, 4000, 'uncuff') then return end
                            TriggerServerEvent("heroin:pickupCane", k) 
                        end
                    }
                },
                distance = 2.5
            })
        end
    end
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        LoadModel('prop_plant_01b')
        TriggerEvent('heroin:init')
    end
 end)
 
 RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
     Wait(3000)
     LoadModel('prop_plant_01b')
     TriggerEvent('heroin:init')
 end)
 
 AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        SetModelAsNoLongerNeeded(GetHashKey('prop_plant_01b'))
        for k, v in pairs(PoppyPlants) do
            if DoesEntityExist(v) then
                DeleteEntity(v) SetEntityAsNoLongerNeeded(v)
            end
        end
    end
	DeleteObject(heroinlabkit)
	DeleteObject(dirtylabkitheroin)
end)
---- plant stop end


RegisterNetEvent("md-drugs:client:dryplant", function(data) 
    if not progressbar(Lang.Heroin.dryout, 4000, 'uncuff') then return end
	TriggerServerEvent("md-drugs:server:dryplant",data.data)
end)

RegisterNetEvent("md-drugs:client:cutheroin", function(data) 
    if not ItemCheck('bakingsoda') then return end
	if not progressbar(Lang.Heroin.cutting, 4000, 'uncuff') then return end
	TriggerServerEvent("md-drugs:server:cutheroin", data.data)   
end)

RegisterNetEvent("md-drugs:client:buyheroinlabkit", function()
   if not progressbar(Lang.Heroin.secret, 4000, 'uncuff') then return end
	TriggerServerEvent("md-drugs:server:getheroinlabkit")
end)

RegisterNetEvent("md-drugs:client:setheroinlabkit")
AddEventHandler("md-drugs:client:setheroinlabkit", function() 
if herointable then   
   Notify(Lang.Heroin.tableout, 'error')
else
local PedCoords = GetEntityCoords(PlayerPedId())
    if not progressbar(Lang.Heroin.table, 4000, 'uncuff') then TriggerServerEvent('md-drugs:server:getheroinlabkitback') return end
    herointable = true
	local heroinlabkit = CreateObject("v_ret_ml_tablea", PedCoords.x+1, PedCoords.y+1, PedCoords.z-1, true, false)
	PlaceObjectOnGroundProperly(heroinlabkit)
    local  options = {
        { event = "md-drugs:client:heatliquidheroin", icon = "fas fa-box-circle-check", label = "Cook Heroin", data = heroinlabkit},
        { event = "md-drugs:client:getheroinkitback", icon = "fas fa-box-circle-check", label = "Pick Up",     data = heroinlabkit, canInteract = function() if herointable then return true end end},
     }
    if Config.oxtarget then
        exports.ox_target:addLocalEntity(heroinlabkit, options)
    else
	    exports['qb-target']:AddTargetEntity(heroinlabkit, {options = options})
    end    
end
end)


RegisterNetEvent("md-drugs:client:heatliquidheroin", function(data) 
local PedCoords = GetEntityCoords(PlayerPedId())
    if not ItemCheck('emptyvial') then return end
    if not minigame(2, 8) then
        TriggerServerEvent("md-drugs:server:failheatingheroin")
		DeleteObject(data.data)
		Wait(100)
		local dirtylabkitheroin = CreateObject("v_ret_ml_tablea", PedCoords.x+1, PedCoords.y+1, PedCoords.z-1, true, false)
		loadParticle("core")
	    heroinkit = StartParticleFxLoopedOnEntity("exp_air_molotov", dirtylabkitheroin, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, false, false, false)
        SetParticleFxLoopedAlpha(heroinkit, 3.0)
		SetPedToRagdoll(PlayerPedId(), 1300, 1300, 0, 0, 0, 0)
        local options = {
            {   event = "md-drugs:client:cleanheroinlabkit",   icon = "fas fa-box-circle-check",   label = "Clean It", data = dirtylabkitheroin}
        }
        if Config.oxtarget then
            exports.ox_target:addLocalEntity(dirtylabkitheroin,options )
        else
		    exports['qb-target']:AddTargetEntity(dirtylabkitheroin, {options = options})
        end    
	return end
   if not progressbar(Lang.Heroin.success, 4000, 'uncuff') then return end
    TriggerServerEvent("md-drugs:server:heatliquidheroin")
end)


RegisterNetEvent("md-drugs:client:cleanheroinlabkit", function(data)
    if not ItemCheck('cleaningkit') then return end
    if not progressbar(Lang.Heroin.clean, 4000, 'clean') then return end
	TriggerServerEvent("md-drugs:server:removecleaningkitheroin", data.data)
end)

RegisterNetEvent("md-drugs:client:deletedirtyheroin", function(data) 
DeleteObject(data)
herointable = false
Wait(1000)
TriggerEvent("md-drugs:client:setheroinlabkit")
end)



RegisterNetEvent("md-drugs:client:getheroinkitback", function(data) 
   if not progressbar(Lang.Heroin.pickup, 4000, 'uncuff') then return end
    herointable = false
    DeleteObject(data.data)
    TriggerServerEvent("md-drugs:server:getheroinlabkitback")
end)


RegisterNetEvent("md-drugs:client:fillneedle", function(data) 
    if not minigame(2, 8) then TriggerServerEvent("md-drugs:server:failheroin", data.data) return end
   if not  progressbar(Lang.Heroin.needles, 4000, 'uncuff') then return end
    TriggerServerEvent("md-drugs:server:fillneedle", data.data)
end)


