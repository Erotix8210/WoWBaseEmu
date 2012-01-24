-- Add NPC Somnus (12900)
DELETE FROM creature WHERE id=12900;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType)VALUES
(12900,0,1,1,0,0,-10576.6,-4231.65,23.5322,5.88772,600,0,0,38844,8343,0,1);
UPDATE creature_template SET minhealth=38844,maxhealth=38844 WHERE entry=12900;
