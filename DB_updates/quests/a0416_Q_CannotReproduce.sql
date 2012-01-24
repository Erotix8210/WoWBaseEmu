-- Quest: Cannot Reproduce (13355)

DELETE FROM creature WHERE id IN(32242,32244,32245);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType)VALUES
(32242, 571, 1, 1, 26241, 0, 7989.59, 2328.41, 486.592, 0.17, 25, 1, 0, 4979, 0, 0, 0),
(32244, 571, 1, 1, 26241, 0, 7997.49, 2367.29, 485.684, 0.17, 25, 1, 0, 4979, 0, 0, 0),
(32245, 571, 1, 1, 26241, 0, 8038.93, 2375.11, 487.731, 0.17, 25, 1, 0, 4979, 0, 0, 0);


DELETE FROM spell_script_target WHERE entry=60256;
INSERT INTO spell_script_target (entry, TYPE, targetEntry)VALUES
(60256, 1, 32244),
(60256, 1, 32242),
(60256, 1, 32245);

UPDATE creature_template SET AIName= 'EventAI' , modelid_1=16925, unit_flags=unit_flags|33554432 WHERE entry IN (32242,32244,32245);

DELETE FROM creature_ai_scripts WHERE creature_id IN(32242,32244,32245);
INSERT INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, COMMENT)VALUES
(3224401, 32244, 8, 0, 100, 1, 60256, -1, 0, 0, 33, 32244, 6, 0, 37, 0, 0, 0, 0, 0, 0, 0, 'Green Cauldron -Kill Credit'),
(3224201, 32242, 8, 0, 100, 1, 60256, -1, 0, 0, 33, 32242, 6, 0, 37, 0, 0, 0, 0, 0, 0, 0, 'Blue Cauldron -Kill Credit'),
(3224501, 32245, 8, 0, 100, 1, 60256, -1 , 0, 0, 33, 32245, 6, 0, 37, 0, 0, 0, 0, 0, 0, 0, 'Dark Cauldron -Kill Credit');
