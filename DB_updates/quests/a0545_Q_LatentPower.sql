-- support for Latent Power - quest 12094

-- set EAI for kill credits

DELETE FROM creature_ai_scripts WHERE creature_id IN (26855,26856,26857);
INSERT INTO creature_ai_scripts (id,creature_id,event_type,event_inverse_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action1_type,action1_param1,action1_param2,action1_param3,action2_type,action2_param1,action2_param2,action2_param3,action3_type,action3_param1,action3_param2,action3_param3,comment) VALUES 
(2685501,26855,8,0,100,1,47542,-1,60000,60000,33,26855,6,0,0,0,0,0,0,0,0,0,'East Stone - kill credit'),
(2685601,26856,8,0,100,1,47542,-1,60000,60000,33,26856,6,0,0,0,0,0,0,0,0,0,'North Stone - kill credit'),
(2685701,26857,8,0,100,1,47542,-1,60000,60000,33,26857,6,0,0,0,0,0,0,0,0,0,'South Stone - kill credit');

UPDATE creature_template SET  AIName='EventAI' WHERE entry IN (26856,26855,26857);

-- set correct MovementType (required for channeling spell 47542)

UPDATE creature SET MovementType = 0 WHERE id IN (26856,26855,26857);

-- add gameobjects

DELETE FROM gameobject WHERE id IN (188469,188479,188473);
INSERT INTO gameobject (id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(188469,571,1,1,4116.89,-5251.95,7.25879,2.05949,0,0,0,1,300,100,1),
(188469,571,1,1,3967.76,-4999.08,72.8074,1.0472,0,0,0,1,300,100,1),
(188469,571,1,1,4126.74,-4851.46,73.5064,1.70044,0,0,0.751425,0.659819,25,255,1),
(188473,571,1,1,4118.19,-5251.46,7.18585,2.40855,0,0,0,1,300,100,1),
(188473,571,1,1,3969.73,-5000.23,72.2324,-1.71042,0,0,0,1,300,100,1),
(188473,571,1,1,4126.74,-4851.46,73.5064,0.207507,0,0,0.103568,0.994622,25,255,1),
(188479,571,1,1,4116.89,-5251.95,7.25879,2.05949,0,0,0,1,300,100,1),
(188479,571,1,1,3967.76,-4999.08,72.8074,1.0472,0,0,0,1,300,100,1),
(188479,571,1,1,4126.61,-4851.46,73.5353,5.72168,0,0,0.277079,-0.960847,25,255,1);
