-- Add Harold Lagras (23730) (by Bastek)
DELETE FROM creature WHERE id = 23730;
INSERT INTO creature (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(23730, 571, 1, 1, 0, 0, 697.211, -5202.59, -71.1537, 3.21358, 25, 0, 0, 9291, 0, 0, 2);

-- Add movement for Harold Lagras (23730)
SET @guid = (SELECT guid FROM creature WHERE id = 23730);
DELETE FROM creature_movement WHERE id = @guid;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(@guid, 1, 696.718, -5202.54, -71.1346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.23321, 0, 0),
(@guid, 2, 686.416, -5202.34, -68.3448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.2018, 0, 0),
(@guid, 3, 679.145, -5201.92, -65.1446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.17824, 0, 0),
(@guid, 4, 669.661, -5199.81, -61.6346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88371, 0, 0),
(@guid, 5, 664.792, -5205.91, -57.7803, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.30135, 0, 0),
(@guid, 6, 669.661, -5199.81, -61.6346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.88371, 0, 0),
(@guid, 7, 679.145, -5201.92, -65.1446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.17824, 0, 0),
(@guid, 8, 686.416, -5202.34, -68.3448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.2018, 0, 0),
(@guid, 9, 696.718, -5202.54, -71.1346, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.23321, 0, 0);
