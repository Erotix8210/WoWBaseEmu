UPDATE creature_template SET
AIName='EventAI'
WHERE entry=24914;

-- Sorlof
DELETE from creature_ai_scripts where id=2491401;
INSERT INTO creature_ai_scripts VALUES
(2491401, 24914, 6, 0, 100, 0, 0, 0, 0, 0, 11, 45070, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorlof - cast Sorlof\'s Booty upon death');

-- Sorlof
DELETE FROM creature WHERE id = 24914;
INSERT INTO creature (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(24914,571,1,1,0,0,251.991,-3791.04,7.31158,1.74956,300,5,0,126000,0,0,0);

-- Mutinous sea dog
DELETE FROM creature WHERE id = 25026;
INSERT INTO creature (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(25026,571,1,1,0,740,77.6373,-3717.05,-5.9739,2.40773,300,5,0,8982,0,0,0),
(25026,571,1,1,0,740,67.8326,-3707.56,-5.9739,0.750534,300,5,0,7984,0,0,0),
(25026,571,1,1,0,740,64.9455,-3687.65,-19.3738,1.86109,300,5,0,7984,0,0,0),
(25026,571,1,1,0,740,61.2102,-3655.91,-13.6713,0.1607,300,5,0,8982,0,0,0),
(25026,571,1,1,0,740,94.1609,-3649.11,-28.7839,0.21018,300,5,0,7984,0,0,0),
(25026,571,1,1,0,740,131.436,-3655.49,-24.9537,5.20139,300,5,0,7984,0,0,0);
