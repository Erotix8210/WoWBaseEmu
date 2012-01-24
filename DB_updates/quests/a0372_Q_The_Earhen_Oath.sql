-- quest The Earthen Oath


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
