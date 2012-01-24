-- Test Flight quest chain (Blade's Edge Mountains)
DELETE FROM `creature` WHERE `id` = 21413;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`) VALUES ('21413', '530', '1', '1', '1920.02', '5581.92', '271', '0', '1', '0', '1');

DELETE FROM `spell_script_target` WHERE `entry` = 36795;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('36795', '1', '21413');

UPDATE `creature_template` SET `MovementType`='0', `unit_flags`= unit_flags|33570816 WHERE (`entry`='21413');
UPDATE `creature_template` SET `MovementType`='0' WHERE (`entry`='21926');
UPDATE `creature_template` SET `ScriptName`='npc_rally' WHERE (`entry`='21461');
UPDATE `creature_template` SET `unit_flags`= unit_flags|33570816 ,`InhabitType` = '4', `MovementType` = '0', `ScriptName`='npc_channeler' WHERE (`entry`='21393');

DELETE FROM `spell_target_position` WHERE id = 36801;
INSERT INTO `spell_target_position` VALUES
('36801', '530', '1920.02', '5581.92', '270.2', '5.25');
