-- Quest: Scouting the Sinkholes (11684)

DELETE FROM spell_script_target WHERE entry=45853;
INSERT INTO spell_script_target (entry, TYPE, targetEntry)VALUES
(45853, 1, 25664),
(45853, 1, 25665),
(45853, 1, 25666);

UPDATE creature_template SET unit_flags=unit_flags|33554432  WHERE entry IN(25664,25665,25666);

DELETE FROM creature WHERE id IN(25664,25665,25666);
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType)VALUES
(25664, 571, 1, 1, 17188, 0, 3488.631, 4513.547, -20.739, 0.17, 10, 1, 0, 1, 0, 0, 0),
(25665, 571, 1, 1, 17188, 0, 3646.008, 4553.275, -20.7398, 0.17, 10, 1, 0, 1, 0, 0, 0),
(25666, 571, 1, 1, 17188, 0, 3647.12, 4744.79, -20.7398, 0.17, 10, 1, 0, 1, 0, 0, 0);
