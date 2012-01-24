-- support for Out of Body Experience - quest 12327
-- correct stats for NPCs
DELETE FROM creature WHERE id = 27620;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType)
VALUES (27620,0,1,1,0,0,-463.346,1499.58,19.3405,2.48203,25,5,0,10635,0,0,0);
 
UPDATE `creature_template` SET  minlevel = 75, maxlevel = 75, minhealth = 10635, maxhealth = 10635 WHERE entry = 27620;
UPDATE creature SET  curhealth = 10635 WHERE id = 27620;
UPDATE `creature_template` SET  rank =1, minlevel = 72, maxlevel = 72, minhealth = 28830, maxhealth = 28830 WHERE entry IN  (27624, 27618, 27616);
UPDATE `creature_template` SET rank =1, minlevel = 75, maxlevel = 75, minhealth = 96100, maxhealth = 96100 WHERE entry = 27619;
 
-- set teleport spells
 
DELETE FROM spell_target_position WHERE id = 49097;
INSERT INTO spell_target_position VALUES (49097, 0, -469.669098, 1496.144409, 17.877396, 0.121549);
 
DELETE FROM spell_target_position WHERE id = 49098;
INSERT INTO spell_target_position VALUES (49098, 571, 3837.924805, -3424.958496, 293.103760, 1.535269);
 
-- set correct invisibilty for NPCs  & mount NPC
 
DELETE FROM `creature_template_addon` WHERE `entry` IN (27620, 27619, 27624, 27618, 27616);
INSERT INTO `creature_template_addon`(entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27620,0,33554432,0,0,0,0,'49130 0'),
(27616,0,0,0,0,0,0,'49130 0'),
(27618,0,0,0,0,0,0,'49130 0'),
(27619,0,0,0,0,0,0,'49130 0'),
(27624,10721,0,0,0,0,0,'49130 0');
 
-- set EAI
 
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (27620, 27619, 27624, 27618, 27616);
 
DELETE FROM creature_ai_texts WHERE entry IN (-276241,-276191);
INSERT INTO creature_ai_texts VALUES
(-276241,'Yes... he shall suit our needs perfectly. Have him sent to Solstice Village when you are ready. Arthas will not be pleased if we fall behind schedule.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Prince Theraldis say'),
(-276191,'Rise, Arugal! The power of the Lich King commands you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Prince Valanar say');
 
DELETE FROM creature_ai_scripts WHERE creature_id IN (27620, 27619, 27624, 27618, 27616);
INSERT INTO creature_ai_scripts VALUES 
(2762001,27620,10,0,100,1,1,25,40000,40000,32,27616,0,27616,32,27618,0,27618,32,27619,0,27619,'Shade of Arugal - Summon Princes'),
(2761901,27619,11,0,100,0,0,0,0,0,11,48185,0,1,32,27624,0,27624,0,0,0,0,'Prince1 - Cast on Spawn & Summon Prince4'),
(2761902,27619,1,0,100,0,4000,4000,0,0,1,-276191,0,0,0,0,0,0,0,0,0,0,'Prince1 - say'),
(2761801,27618,11,0,100,0,0,0,0,0,11,48185,0,1,0,0,0,0,0,0,0,0,'Prince2 - Cast on Spawn'),
(2761601,27616,1,0,100,0,0,0,0,0,11,48185,0,1,0,0,0,0,0,0,0,0,'Prince3 - Cast on Spawn'),
(2762401,27624,1,2,100,0,10000,10000,0,0,1,-276241,0,0,22,1,0,0,0,0,0,0,'Prince4 - say');
 
-- Four Princes summon
 
DELETE FROM creature_ai_summons WHERE id IN (27619, 27618, 27616, 27624);
INSERT INTO creature_ai_summons VALUES
(27619, -464.915, 1507.98, 17.5507, 4.9227, 60000,'Prince 1 Spawn'),
(27618, -462.797, 1492.53, 17.2383, 1.60239, 60000,'Prince 2 Spawn'),
(27616,-473.853, 1498.42, 18.5785, 0.455714, 60000,'Prince 3 Spawn'),
(27624,-471.277, 1492.1, 17.874, 0.954433, 60000,'Prince 4 Spawn');
 
-- set Shade of Arugal as a target for spell
 
DELETE FROM spell_script_target WHERE entry = 48185;
INSERT INTO spell_script_target VALUES (48185, 1, 27620);
