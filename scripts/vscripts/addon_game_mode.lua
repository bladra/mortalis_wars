-- Generated from template
 
if CAddonTemplateGameMode == nil then
        CAddonTemplateGameMode = class({})
end
 
function Precache( context )
PrecacheResource("model", "models/heroes/blood_seeker/blood_seeker.mdl", context) 
PrecacheResource("model", "models/heroes/legion_commander/legion_commander.mdl", context) 
PrecacheResource("model", "models/heroes/phantom_lancer/phantom_lancer.mdl", context) 
PrecacheResource("model", "models/heroes/windrunner/windrunner.mdl", context) 
PrecacheResource("model", "mmodels/heroes/warlock/warlock.mdl", context) 
PrecacheResource("model", "models/heroes/chaos_knight/chaos_knight.mdl", context) 
PrecacheResource("model", "models/heroes/sniper/sniper.mdl", context) 
PrecacheResource("model", "models/heroes/lina/lina.mdl", context) 
PrecacheResource("model", "models/props_structures/tent_dk_med.mdl", context) 
PrecacheResource("model", "models/props_structures/good_barracks_melee001.mdl", context) 
PrecacheResource("model", "models/props_structures/tent_dk_small.mdl", context) 
PrecacheResource("model", "models/props_structures/tent_dk_med.mdl", context) 
PrecacheResource("model", "models/props_structures/good_barracks_ranged002.mdl", context) 
PrecacheResource("model", "models/props_structures/tower_good4.mdl", context) 
PrecacheResource("model", "models/props_structures/sniper_hut.mdl", context) 
PrecacheResource("model", "models/props_structures/cathedral001.mdl", context) 
PrecacheResource("model", "models/props_structures/good_ancient_fountain001.mdl", context) 
PrecacheResource("model", "models/props_structures/secretshop_asian001.mdl", context) 
PrecacheResource("model", "models/props_structures/wooden_sentry_tower001.mdl", context) 
PrecacheResource("model", "models/creeps/item_creeps/i_creep_necro_warrior/necro_warrior.mdl", context) 
PrecacheResource("model", "models/heroes/undying/undying.mdl", context) 
PrecacheResource("model", "models/heroes/clinkz/clinkz.mdl", context) 
PrecacheResource("model", "models/heroes/abaddon/abaddon_shape.mdl", context) 
PrecacheResource("model", "models/creeps/lane_creeps/creep_bad_ranged/creep_bad_ranged.mdl", context) 
PrecacheResource("model", "models/heroes/necrolyte/necrolyte.mdl", context) 
PrecacheResource("model", "models/creeps/item_creeps/i_creep_necro_archer/necro_archer.mdl", context) 
PrecacheResource("model", "models/heroes/doom/doom.mdl", context) 
PrecacheResource("model", "models/creeps/lane_creeps/creep_radiant_melee_diretide/creep_radiant_melee_diretide.mdl", context) 
PrecacheResource("model", "models/creeps/lane_creeps/creep_radiant_ranged_diretide/creep_radiant_ranged_diretide.mdl", context) 
PrecacheResource("model", "models/props_structures/gravestone005.mdl", context) 
PrecacheResource("model", "models/props_structures/bad_head001.mdl", context) 
PrecacheResource("model", "models/props_garden/bad_stonewallstatue002b.mdl", context) 
PrecacheResource("model", "models/heroes/undying/undying_tower.mdl", context) 
PrecacheResource("model", "models/props_structures/secretshop_dire001.mdl", context) 
PrecacheResource("model", "models/props_structures/tower_bad_destruction.mdl", context) 
PrecacheResource("model", "models/props_structures/bad_ancient_destruction.mdl", context) 
PrecacheResource("model", "models/buildings/building_plain_reference.mdl", context)

        --[[
                Precache things we know we'll use.  Possible file types include (but not
 
limited to):
 
                        PrecacheResource( "model", "*.vmdl", context )
                        PrecacheResource( "soundfile", "*.vsndevts", context )
                        PrecacheResource( "particle", "*.vpcf", context )
                        PrecacheResource( "particle_folder", "particles/folder", context )
        ]]
end
 
-- CREATE THE GAME mode when we activate
function Activate()
        GameRules.AddonTemplate = CAddonTemplateGameMode()
        GameRules.AddonTemplate:InitGameMode()
end
 
function CAddonTemplateGameMode:InitGameMode()
local unit = CreateUnitByName("npc_villager", Vector(-5504,3584,128), true, nil, nil,
 
DOTA_TEAM_GOODGUYS)
        print( "Template addon is loaded." )
        GameRules:GetGameModeEntity():SetThink( "OnThink", self, "GlobalThink", 2 )
end
 
-- Evaluate the state of the game
function CAddonTemplateGameMode:OnThink()
        if GameRules:State_Get() == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
                --print( "Template addon script is running." )
        elseif GameRules:State_Get() >= DOTA_GAMERULES_STATE_POST_GAME then
                return nil
        end
        return 1
end