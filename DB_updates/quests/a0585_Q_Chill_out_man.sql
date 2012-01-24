DELETE FROM `creature_ai_texts` WHERE `entry` IN(-268121, -268111);
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `comment`) VALUES
('-268121', 'I could sleep forever, mon...', 'Ancient Drakkari Text #1'),
('-268111', 'Finally, I can be restin\'...', 'Ancient Drakkari Text #2');

UPDATE `creature_template` SET `unit_flags` = unit_flags|16384 WHERE `entry` = 26591;

UPDATE `creature_template` SET `ScriptName`='spell_dummy_npc' WHERE `entry` IN (26812, 26811); 
