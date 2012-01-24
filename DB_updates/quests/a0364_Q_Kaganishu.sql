-- support for quest 11637 Kaganishu (by Tank)
-- add Kaganishu
DELETE FROM `creature` WHERE `id`=25427;
INSERT INTO `creature`(`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`)
VALUES (25427,571,1,1,0,523,4413.01709,5325.485352,-24.256561,5.393854,300,0,0,9291,9693,0,0);

-- add spell target (Farseer Grimwalker's Spirit) to the triggered spell 45607
DELETE FROM `spell_script_target` WHERE entry = 45607;
INSERT INTO `spell_script_target` (entry, type, targetEntry)
VALUES (45607,1,25425);