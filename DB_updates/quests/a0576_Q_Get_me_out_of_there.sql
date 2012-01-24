DELETE FROM creature WHERE id =25589;
INSERT INTO creature(id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType)VALUES
('25589', '571', '1', '1', '0', '0', '4411.41', '5371.32', '-15.0247', '0.1091', '25', '5', '0', '13936', '0', '0', '0');


UPDATE `creature_template` SET `ScriptName`='npc_mootoo_the_younger', MovementType=2 WHERE `entry`=25504;
UPDATE `creature_template` SET `ScriptName`='npc_bonker_togglevolt', MovementType=2 WHERE `entry`=25589;