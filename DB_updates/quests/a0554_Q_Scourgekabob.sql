UPDATE `creature_template` SET `AIName`='EventAI' WHERE (`entry`='27931');

DELETE FROM `creature_ai_scripts` WHERE `id` = 2793101;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `comment`) VALUES
('2793101', '27931', '10', '1', '1', '10', '1', '1', '11', '50035', '6', '1', 'Despawn Mummy Bunny - KillCredit at Player');