DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 26902;
DELETE FROM `creature_ai_texts` WHERE `entry` = -269021;
DELETE FROM `creature` WHERE `id` = 26924;

INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action2_type`, `comment`) VALUES ('2690201', '26902', '1', '5000', '5000', '0', '0', '1', '-269021', '41', 'Essence of Warlord Jin\'arrak - Boss Emote 5 seconds after spawn');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `type`, `comment`) VALUES ('-269021', 'How dare you summon me without an offering!', '3', 'Essence of Warlord Jin\'arrak - Text #1');
UPDATE `creature_template` SET `unit_flags`=unit_flags|258, `AIName`='EventAI' WHERE (`entry`='26902');
UPDATE `creature_template` SET `minhealth`='5939', `maxhealth`='5939' WHERE (`entry`='26924');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`, `curmana`, `DeathState`) VALUES
(26924, 571, 1, 2, 4835.791, -4755.366, 32.522, 5.55, 30, 5939, 0, 0);

UPDATE `quest_template` SET `StartScript`='12137' WHERE (`entry`='12137');
INSERT INTO `quest_start_scripts` (`id`, `command`, `datalong`, `datalong2`, `comments`) VALUES ('12137', '14', '61611', '0', 'Quest 12137 - Remove Aura');
