-- support for Rejek: First Blood - quest 12734 by Tank

-- add killcredit in EAI for Sapphire Hive Wasp, Hardknuckle Charger, Mistwhisper Warrior, Mistwhisper Oracle

DELETE FROM `creature_ai_scripts` WHERE id = 2808602;
INSERT INTO creature_ai_scripts 
(`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`)
VALUES (2808602,28086,8,0,100,0,52992,-1,0,0,33,28040,6,0,0,0,0,0,0,0,0,0,'Kill Credit - Rejeks Blade blooded on Sapphire Hive Wasp');

DELETE FROM `creature_ai_scripts` WHERE id = 2809602;
INSERT INTO creature_ai_scripts 
(`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`)
VALUES (2809602,28096,8,0,100,0,52992,-1,0,0,33,36189,6,0,0,0,0,0,0,0,0,0,'Kill Credit - Rejeks Blade blooded on Hardknuckle Charger');

DELETE FROM `creature_ai_scripts` WHERE id = 2810902;
INSERT INTO creature_ai_scripts 
(`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`)
VALUES (2810902,28109,8,0,100,0,52992,-1,0,0,33,29043,6,0,0,0,0,0,0,0,0,0,'Kill Credit - Rejeks Blade blooded on Mistwhisper Warrior');

DELETE FROM `creature_ai_scripts` WHERE id = 2811002;
INSERT INTO creature_ai_scripts 
(`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`)
VALUES (2811002,28110,8,0,100,0,52992,-1,0,0,33,29043,6,0,0,0,0,0,0,0,0,0,'Kill Credit - Rejeks Blade blooded on Mistwhisper Oracle');
