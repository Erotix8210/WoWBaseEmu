-- Crypt Fever and Ebon Plaguebringer
DELETE FROM `spell_proc_event` WHERE `entry` IN (49032, 51099);
INSERT INTO `spell_proc_event` VALUES
(49032,0,15,0,0,0,0,0,0,0,0,0,65552,0,0,0,0),
(51099,0,15,0,0,0,0,0,0,0,0,0,65552,0,0,0,0);
