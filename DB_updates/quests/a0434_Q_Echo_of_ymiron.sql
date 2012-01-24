DELETE FROM creature WHERE id IN(24314,24315);
INSERT INTO creature (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(24314,571,1,2,0,0,1074.03,-5027.16,9.69138,5.18803,25,5,0,5158,0,0,0),
(24315,571,1,2,0,0,1077.22,-5034.98,9.65473,1.92156,25,5,0,5158,0,0,0);

UPDATE creature_template SET
unit_flags=unit_flags |2 |512
WHERE entry IN(24314,24315);

UPDATE creature_template SET
ScriptName='npc_valkyr'
WHERE entry =24314;
