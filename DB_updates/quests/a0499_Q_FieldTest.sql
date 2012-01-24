-- support for Field Test - quest 11307

-- set EAI for Plagued Dragonflayer Tribesmen, Handler, Rune-Caster

UPDATE creature_template SET  AIName='EventAI' WHERE entry IN (23564,24199,24198);

DELETE FROM creature_ai_scripts WHERE creature_id IN (23564, 24199, 24198);
INSERT INTO creature_ai_scripts (id,creature_id,event_type,event_inverse_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action1_type,action1_param1,action1_param2,action1_param3,action2_type,action2_param1,action2_param2,action2_param3,action3_type,action3_param1,action3_param2,action3_param3,comment) 
VALUES
(2356401,23564,0,0,100,1,0,0,30000,30000,11,43506,0,0,0,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - cast Plague Blight'),
(2356402,23564,0,0,100,1,2000,2000,10000,10000,11,32736,1,0,0,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - cast Mortal Strike'),
(2356403,23564,0,0,100,1,5000,5000,10000,10000,11,15496,1,0,0,0,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - cast Cleave'),
(2356404,23564,8,0,100,1,43381,-1,45000,45000,33,24281,6,0,11,42167,0,0,0,0,0,0,'Plagued Dragonflayer Tribesman - kill credit '),
(2419801,24198,0,0,100,1,0,0,30000,30000,11,43506,0,0,0,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - cast Plague Blight'),
(2419802,24198,0,0,100,1,1000,1000,30000,30000,11,47782,1,0,0,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - cast Corruption'),
(2419803,24198,0,0,100,1,4000,4000,12000,12000,11,15616,1,0,0,0,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster - cast Flame Shock'),
(2419804,24198,8,0,100,1,43381,-1,45000,45000,33,24281,6,0,11,42167,0,0,0,0,0,0,'Plagued Dragonflayer Rune-Caster -  kill credit'),
(2419901,24199,0,0,100,1,0,0,30000,30000,11,43506,0,0,0,0,0,0,0,0,0,0,'Plagued Dragonflayer Handler - cast Plague Blight'),
(2419902,24199,8,0,100,1,43381,-1,45000,45000,33,24281,6,0,11,42167,0,0,0,0,0,0,'Plagued Dragonflayer Handler - kill credit');
