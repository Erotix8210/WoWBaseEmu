-- add Magnus Frostwake, NPC 11278

DELETE FROM creature WHERE `id`= 11278;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES 
(11278,0,1,1,11027,0,1142.84923,-2512.560547,62.077454,4.096005,120,0,0,2769,0,0,0);

-- set correct hp

UPDATE creature_template SET 
minhealth = 2769, 
maxhealth = 2769 
WHERE entry = 11278;
