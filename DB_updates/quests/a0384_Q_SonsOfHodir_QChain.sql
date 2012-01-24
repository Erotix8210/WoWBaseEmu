--
-- Sons of Hodir chain quests
--

-- quartermaster Lillehoff: phaseMask - available after gaining friendly reputation with SoH
UPDATE creature SET phaseMask = 4 WHERE id = 32540;

-- ******************
-- They took our men!
-- ******************
-- rusty cage
UPDATE gameobject_template SET
data3 = 6000,
ScriptName = 'go_rusty_cage'
WHERE entry = 191544;

-- ******************
-- Mildred The Cruel
-- ******************
-- wrong factions for alliance nad horde
UPDATE `creature_template` SET `faction_A` = '35',
`faction_H` = '35' WHERE `entry` = 29885 LIMIT 1 ;

-- ******************
-- The Crone's Bargain
-- ******************
-- Disguise as a Brunnhildar Challanger
DELETE FROM `spell_area` WHERE `spell` IN (55012, 72914);
INSERT INTO `spell_area` VALUES
-- The Forlorn Mine
(55012, 4425, 12841,0,0,0,0,2,1), -- force reaction
(72914, 4425, 12841,0,0,0,0,2,1), -- model
-- Brunnhildar Village
(55012, 4422, 12841,0,0,0,0,2,1),
(72914, 4422, 12841,0,0,0,0,2,1),
-- Valley of Ancient Winters
(55012, 4437, 12841,0,0,0,0,2,1),
(72914, 4437, 12841,0,0,0,0,2,1),
-- Dun Niffelem
(55012, 4438, 12841,0,0,0,0,2,1),
(72914, 4438, 12841,0,0,0,0,2,1),
-- Frostfield Lake
(55012, 4439, 12841,0,0,0,0,2,1),
(72914, 4439, 12841,0,0,0,0,2,1),
-- Temple of Storms
(55012, 4430, 12841,0,0,0,0,2,1),
(72914, 4430, 12841,0,0,0,0,2,1),
-- The Foot Steppes
(55012, 4432, 12841,0,0,0,0,2,1),
(72914, 4432, 12841,0,0,0,0,2,1),
-- Thunderfall
(55012, 4440, 12841,0,0,0,0,2,1),
(72914, 4440, 12841,0,0,0,0,2,1),
-- Fjorn's Anvil
(55012, 4495, 12841,0,0,0,0,2,1),
(72914, 4495, 12841,0,0,0,0,2,1),
-- Hibernal Cavern
(55012, 4455, 12841,0,0,0,0,2,1),
(72914, 4455, 12841,0,0,0,0,2,1),
-- Pit of The Fang - disguise only: problems with faction
(72914, 4535, 12841,0,0,0,0,2,1);

/* restored propper templates from UDB390 f*cked by previous commits
-- observed that if Lynx3d vmaps are disabled in Northrend
-- Forlone Mine returns area 67 - dunno why
DELETE FROM spell_area WHERE spell IN (72914,55012);
INSERT INTO spell_area VALUES
-- Lok'lira's Bargain
(55012, 67, 12841,0,0,0,0,2,1),
-- Lok'lira's Bargain (hack - visual aura triggered by 55012,
-- maybe 55012 should have dummyAura in 3th effect instade dummyEffect?)
(72914, 67, 12841,0,0,0,0,2,1);
*/


-- ******************
-- Cold Hearted
-- ******************
-- flying Captive Drakes - summon freed drake - vehicle
UPDATE creature_template SET IconName = "vehichleCursor", Spell1 = 55046 WHERE entry = 29709;

UPDATE creature_template SET ScriptName = "mob_brunnhildar_prisoner" WHERE entry = 29639;

DELETE FROM creature_template_addon WHERE entry = 29709;
INSERT INTO creature_template_addon VALUES
(29709, 0, 50331648, 1, 0, 0, 1024, "48602");

DELETE FROM spell_script_target WHERE entry = 55046;
INSERT INTO spell_script_target VALUES (55046, 1, 29639);

DELETE FROM npc_spellclick_spells WHERE npc_entry = 29708;
INSERT INTO npc_spellclick_spells VALUES (29708, 55028, 12856, 1, 12856, 3);

-- REPLACE INTO creature_template_addon VALUES
-- (29709, 0, 50331648, 1, 0, 0, 1024, 194, "", "48602");
-- DELETE FROM vehicle_data WHERE entry = 194;
-- INSERT INTO vehicle_data VALUES (194, 4|8, 55046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- DELETE FROM vehicle_seat_data WHERE seat IN (2102, 2113, 2108, 2115);
-- INSERT INTO vehicle_seat_data VALUES
-- (2102, 1),
-- (2113, 0),
-- (2108, 0),
-- (2115, 0);

-- ******************
-- The Last Of Her Kind
-- ******************
-- bug: when vehicle leaves the phased area, then player and veh have different phaseMasks and things get messy
/*UPDATE creature_template SET IconName = "vehichleCursor", minhealth = 12600, maxhealth = 12600 WHERE entry = 29563;
UPDATE creature_template SET minhealth = 12600, maxhealth = 12600, MovementType = 2, ScriptName = "npc_harnessed_icemaw_matriarch" WHERE entry = 30468;

DELETE FROM creature_template_addon WHERE entry = 30468;
INSERT INTO creature_template_addon VALUES
(30468, 0, 0, 0, 0, 0, 0, 316, "", "");

DELETE FROM vehicle_data WHERE entry = 316;
INSERT INTO vehicle_data VALUES
(316, 0x40|0x08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM vehicle_seat_data WHERE seat = 2773;
INSERT INTO vehicle_seat_data VALUES
(2773, 0x02);

DELETE FROM npc_spellclick_spells WHERE npc_entry = 29563;
INSERT INTO npc_spellclick_spells VALUES (29563, 56795, 12983, 1, 12983, 3);

DELETE FROM creature_movement_template WHERE entry = 30468;
INSERT INTO creature_movement_template VALUES
(30468, 1, 7336.75, -2027.69, 763.36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 2, 7332.05, -2095.13, 772.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 3, 7274.43, -2118.46, 776.05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 4, 7262.47, -2114.16, 777.99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 5, 7240.12, -2121.23, 777.49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 6, 7227.97, -2117.15, 777.61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 7, 7195.19, -2111.51, 766.31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 8, 7131.97, -2141.79, 761.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 9, 7115.97, -2078.79, 764.98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 10, 7095.97, -2005.99, 769.88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 11, 7066.47, -1945.83, 772.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 12, 7064.47, -1915.03, 782.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 13, 7089.57, -1888.83, 787.68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 14, 7065.57, -1877.83, 793.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 15, 7041.37, -1884.36, 797.51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 16, 7026.41, -1872.76, 803.51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 17, 7020.21, -1837.76, 820.51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 18, 7010.21, -1779.76, 819.51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 19, 7015.21, -1721.76, 819.91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 20, 6951.21, -1725.76, 820.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 21, 6901.21, -1697.76, 820.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 22, 6877.21, -1678.76, 820.11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30468, 23, 6820.48, -1703.76, 820.11, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);*/

-- phaseMask for vahicle spawner
UPDATE creature SET phaseMask = 2 WHERE id = 29563;

-- <sigh>
UPDATE creature_template SET npcflag = npcflag|1 WHERE entry = 29563;

-- ******************
-- The Warm Up
-- ******************
UPDATE creature_template SET MovementType = 0, AIName = "EventAI" WHERE entry = 29352;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 29352;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, minhealth = 37800, maxhealth = 37800, faction_A = 14, faction_H = 14 WHERE entry = 29918;

DELETE FROM creature_ai_scripts WHERE creature_id = 29352;
INSERT INTO creature_ai_scripts VALUES
(2935201,  29352, 6, 0, 100, 0, 0, 0, 0, 0, 33, 30221, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Kirkraag - Kill Credit upon death");

DELETE FROM creature_template_addon WHERE entry = 29918;
INSERT INTO creature_template_addon VALUES
(29918, 0, 0, 0, 0, 0, 0, 173, "", "");

DELETE FROM vehicle_data WHERE entry = 173;
INSERT INTO vehicle_data VALUES
(173, 0x02|0x04|0x08, 6603, 0, 0, 54459, 54458, 54460, 0, 0, 0, 0, 0);

DELETE FROM vehicle_seat_data WHERE seat = 2069;
INSERT INTO vehicle_seat_data VALUES
(2069, 1);

-- ******************
-- Into The Pit
-- ******************
-- problems with factions for vehicle
UPDATE creature_template SET faction_A = 2109, faction_H = 2109 WHERE entry = 30174;

-- ******************
-- The Drakkensryd
-- ******************
-- vehicle doesn't work? :/
DELETE FROM creature_ai_scripts WHERE creature_id = 29694;
INSERT INTO creature_ai_scripts VALUES
(2969401,  29694, 6, 0, 100, 1, 0, 0, 0, 0, 33, 29800, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Hyldsmeet Drakerider - Kill Credit upon death");

REPLACE INTO creature_template_addon VALUES
(29625, 0, 50331648, 1, 0, 0, 0, 183, "", "48602 0 48602 2");

DELETE FROM vehicle_data WHERE entry = 183;
INSERT INTO vehicle_data VALUES (183, 0x4C, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM vehicle_seat_data WHERE seat IN (2100, 2101);
INSERT INTO vehicle_seat_data VALUES
(2100, 4),
(2101, 5);

-- ******************
-- Mending Fences
-- ******************

UPDATE creature_template SET minhealth = 12600, maxhealth = 12600, minmana = 7988, maxmana = 7988, minlevel = 80, maxlevel = 80, faction_A = 2118, faction_H = 2118 WHERE entry = 29927;

DELETE FROM spell_area WHERE spell IN (55012, 72914) AND area IN (4439, 4495);
INSERT INTO spell_area VALUES
-- Frostfield Lake
(55012, 4439, 12841,0,0,0,0,2,1),
(72914, 4439, 12841,0,0,0,0,2,1),
-- Fjorn's Anvil
(55012, 4495, 12841,0,0,0,0,2,1),
(72914, 4495, 12841,0,0,0,0,2,1);

-- ******************
-- Battling The Elements
-- ******************

-- Q: Battling the Elements

-- See Quest Invisibility
DELETE FROM spell_area WHERE spell = 61209;
INSERT INTO spell_area VALUES
(61209, 4495, 12967,1,0,0,0,2,1); -- Fjorn's Anvil

-- Kill Credit for Forging the Alliance after completing Battling the Elements
DELETE FROM quest_end_scripts WHERE id = 12967;
INSERT INTO quest_end_scripts VALUES
(12967, 0, 15, 55960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Kill Credit for Forging the Alliance after completing Battling the Elements");

-- Seething Revenants spawns
DELETE FROM creature WHERE id = 30387;
INSERT INTO creature (id, map, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawndist, curhealth, MovementType) VALUES
(30387, 571, 1, 1, 0, 7191.64, -3669.66, 823.597, 5.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7201.64, -3660.66, 823.597, 3.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7208.64, -3650.66, 823.597, 2.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7211.64, -3655.66, 823.597, 5.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7226.64, -3652.66, 823.597, 1.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7228.64, -3679.66, 823.597, 2.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7201.64, -3669.66, 823.597, 5.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7210.64, -3647.66, 823.597, 5.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7205.64, -3641.66, 823.597, 4.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7221.64, -3635.66, 823.597, 5.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7231.64, -3672.66, 823.597, 6.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7221.64, -3639.66, 823.597, 3.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7232.64, -3665.66, 823.597, 2.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7228.64, -3660.66, 823.597, 5.67107, 30, 12600, 1),
(30387, 571, 1, 1, 0, 7222.64, -3649.66, 823.597, 4.67107, 30, 12600, 1);

DELETE FROM creature_template_addon WHERE entry = 30387;
INSERT INTO creature_template_addon VALUES
(30387, 0, 0, 1, 0, 0, 0, 0, "", "61208 0 61209 0");

-- problems with targeting faction
UPDATE creature_template SET faction_A = 190, faction_H = 190 WHERE entry = 30387;

DELETE FROM creature_ai_scripts WHERE id = 3038702;
INSERT INTO creature_ai_scripts VALUES
(3038702, 30387, 6, 0, 100, 0, 0, 0, 0, 0, 33, 30125, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Seething Revenant - Kill Credit upon death");

-- vehicle info:
UPDATE creature_template SET faction_A = 1080, faction_H = 1080 WHERE entry = 30124;
DELETE FROM creature_template_addon WHERE entry = 30124;
INSERT INTO creature_template_addon VALUES
(30124, 0, 0, 1, 0, 0, 0, 176, "", "61208 0 61209 0");

DELETE FROM npc_spellclick_spells WHERE npc_entry = 30123;
INSERT INTO npc_spellclick_spells VALUES (30123, 55957, 12967, 1, 12967, 3);

DELETE FROM vehicle_data WHERE entry = 176;
INSERT INTO vehicle_data VALUES (176, 4|8, 56750, 56753, 0, 0, 56752, 0, 0, 0, 0, 0, 0);

DELETE FROM vehicle_seat_data WHERE seat IN (2072, 2073, 2074, 2075);
INSERT INTO vehicle_seat_data VALUES
(2072, 3),
(2073, 2),
(2074, 2),
(2075, 2);

-- phaseMasks messed up? :/
UPDATE creature SET phaseMask = phaseMask|2 WHERE id = 29504;

-- ******************
-- Forging An Alliance
-- ******************
-- Son of Hodir instead of King Jokkum was spawned? also phases again
UPDATE creature SET id = 30105, phaseMask = 3 WHERE guid = 106321;

-- add spawn for Njormel
DELETE FROM creature WHERE id = 30099;
INSERT INTO creature (id, map, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawndist, curhealth, MovementType) VALUES
(30099, 571, 1, 1, 0, 7174.5, -3511.85, 833.682, 5.88107, 0, 50400, 0);

-- add spawn for Snorri
DELETE FROM creature WHERE id = 30123;
INSERT INTO creature (id, map, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawndist, curhealth, MovementType) VALUES
(30123, 571, 1, 1, 0, 7153.71, -3535.85, 833.682, 5.67107, 0, 50400, 0);
-- update basic stats for Snorri NPC and vehicle and Njormeld
UPDATE creature_template SET minlevel = 80, maxlevel = 80, minhealth = 50400, maxhealth = 50400 WHERE entry IN (30123, 30124, 30099);
-- add spawn of other Njormeld
DELETE FROM creature WHERE id = 30127;
INSERT INTO creature (id, map, spawnMask, phaseMask, equipment_id, position_x, position_y, position_z, orientation, spawndist, curhealth, MovementType) VALUES
(30127, 571, 1, 4, 0, 7210.79, -2639.48, 814.01, 4.91107, 0, 49700, 0);

-- Force Reaction for Sons of Hodir
DELETE FROM spell_area WHERE spell = 55953;
INSERT INTO spell_area VALUES
(55953, 4438, 12924,1,0,0,0,2,1), -- Dun Niffelem
(55953, 4495, 12924,1,0,0,0,2,1); -- Fjorn's Anvil

-- ******************
-- Territorial Trespass
-- ******************

DELETE from event_scripts where id=19714;
INSERT into event_scripts (id,delay,command,datalong,datalong2,x,y,z,o,data_flags,comments ) VALUES
(19714,2,10,30461,30000,7089.79,-918.39,1067.44,6.21,0x01,"Summon veranus(quest 13051)");

-- ******************
-- The Earthen Oath
-- ******************

-- Iron Dwarf Magus
DELETE from creature_ai_scripts where id=2997910;
INSERT INTO creature_ai_scripts VALUES
(2997910, 29979, 6, 0, 100, 0, 0, 0, 0, 0, 33, 30297, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Dwarf Magus - kill credit upon death');

-- Iron Dwarf Assailant
UPDATE creature_template SET
AIName='EventAI'
WHERE entry=29978;

DELETE from creature_ai_scripts where id=2997801;
INSERT INTO creature_ai_scripts VALUES
(2997801, 29978, 6, 0, 100, 0, 0, 0, 0, 0, 33, 30297, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Dwarf Assailant - kill credit upon death');

-- Iron Sentinel
DELETE from creature_ai_scripts where id=2998403;
INSERT INTO creature_ai_scripts VALUES
(2998403, 29984, 6, 0, 100, 0, 0, 0, 0, 0, 33, 30296, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Iron Sentinel - kill credit upon death');

-- add Thorim(30295) to the world
DELETE FROM creature WHERE id = 30295;
INSERT INTO creature (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) 
VALUES (30295,571,1,1,0,0,7761.64,-2158.88,1233.33,1.50647,300,5,0,1,0,0,0);

-- Eisenfaust
UPDATE creature_template SET
minlevel=80,
maxlevel=80,
minhealth=50400,
maxhealth=50400,
armor=12600,
mindmg=417,
maxdmg=582,
attackpower=608
WHERE entry=30341;
