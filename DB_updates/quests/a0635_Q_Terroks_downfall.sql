DELETE FROM `creature_ai_scripts` WHERE (`id`='2183803');
DELETE FROM `event_scripts` WHERE id = 15014;

INSERT INTO `event_scripts` (`id`, `command`, `datalong`, `comments`) VALUES ('15014', '9', '14141', 'Spell Use Despawn Ancient Skull Pie');

INSERT INTO `event_scripts` (`id`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `comments`) VALUES ('15014', '10', '21838', '1200000', '-3789.4', '3507.63', '286.982', 'Summon Terokk');

DELETE FROM `gossip_menu_option` WHERE menu_id = 8687;

INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `option_id`, `action_script_id`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`) VALUES ('8687', '<Call forth Terokk.>', '1', '8687', '2', '32720', '1');

DELETE FROM `gossip_scripts` WHERE id = 8687;

INSERT INTO `gossip_scripts` (`id`, `command`, `datalong`, `datalong2`, `comments`) VALUES
('8687', '15', '41004', '1', 'Cast Spell Summon Terokk');

DELETE FROM `spell_script_target` WHERE entry = 41004;
INSERT INTO `spell_script_target` (`entry`, `targetEntry`) VALUES ('41004', '185928');

DELETE FROM `gossip_menu` WHERE entry = 8687;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('8687', '11058');

DELETE FROM `creature_template_addon` WHERE entry = 23377;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `moveflags`) VALUES ('23377', '21152', '536576');

UPDATE `creature_template` SET `ScriptName`='npc_terokk' WHERE (`entry`='21838');
UPDATE `creature_template` SET `ScriptName`='npc_SkyguardAce' WHERE (`entry`='23377');
UPDATE `creature_template` SET `ScriptName`='npc_SkyguardAceTarget' WHERE (`entry`='23277');
