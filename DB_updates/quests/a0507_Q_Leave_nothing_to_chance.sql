DELETE from gameobject where id=188711 AND guid!=66639;
INSERT INTO gameobject ( `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(188711, 571, 1,1,3898.21, -881.576, 119.551, 5.97701, 0, 0, 0.152489, -0.988305, 25, 0, 1);

UPDATE creature_template SET
ScriptName='npc_wintergarde_bomb'
WHERE entry=27435;
