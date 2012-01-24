-- support for Towers of Certain Doom  - quest 11259

-- EAI for kill credit & smoke flare effect after spellhit

DELETE FROM creature_ai_scripts WHERE creature_id IN (24087,24092,24093,24094);
INSERT INTO creature_ai_scripts (id,creature_id,event_type,event_inverse_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action1_type,action1_param1,action1_param2,action1_param3,action2_type,action2_param1,action2_param2,action2_param3,action3_type,action3_param1,action3_param2,action3_param3,comment) VALUES
(2408701,24087,8,0,100,1,49625,-1,60000,60000,33,24087,6,0,11,56511,0,0,0,0,0,0,'Skorn Tower NW Bunny Horde - q11259'),
(2409201,24092,8,0,100,1,49625,-1,60000,60000,33,24092,6,0,11,56511,0,0,0,0,0,0,'Skorn Tower E Bunny Horde - q11259'),
(2409301,24093,8,0,100,1,49625,-1,60000,60000,33,24093,6,0,11,56511,0,0,0,0,0,0,'Skorn Tower SW Bunny Horde - q11259'),
(2409401,24094,8,0,100,1,49625,-1,60000,60000,33,24094,6,0,11,56511,0,0,0,0,0,0,'Skorn Tower SE Bunny Horde - q11259');

UPDATE creature_template SET  AIName='EventAI' WHERE entry IN (24087,24092,24093,24094);

-- set target for Brave's Flare

DELETE FROM spell_script_target WHERE entry = 49625;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(49625, 1, 24087),
(49625, 1, 24092),
(49625, 1, 24093),
(49625, 1, 24094);
