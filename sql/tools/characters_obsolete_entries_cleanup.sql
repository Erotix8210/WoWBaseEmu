-- VERY IMPORTANT NOTE: you must replace `server_realmd` with your own realm database name!

DELETE FROM `characters` WHERE `account` NOT IN (SELECT `id` FROM `server_realmd`.`account`) AND `account` != 0;
DELETE FROM `account_data` WHERE `account` NOT IN (SELECT `id` FROM `server_realmd`.`account`) AND `account` != 0;
DELETE FROM `character_tutorial` WHERE `account` NOT IN (SELECT `id` FROM `server_realmd`.`account`) AND `account` != 0;

DELETE FROM `character_account_data` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_achievement` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_achievement_progress` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_action` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_aura` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_battleground_data` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_battleground_random` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_declinedname` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_equipmentsets` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_gifts` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_glyphs` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_homebind` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_instance` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_inventory` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_pet` WHERE `owner` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_pet_declinedname` WHERE `owner` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_queststatus` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`) and `guid` < 200000;
DELETE FROM `character_queststatus` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`) and `guid` > 199999;
DELETE FROM `character_queststatus_daily` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_queststatus_weekly` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_queststatus_monthly` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_reputation` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_skills` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_social` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_social` WHERE `friend` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_spell` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_spell_cooldown` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_stats` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_talent` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `character_ticket` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `anticheat_log` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `armory_character_feed_log` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `armory_character_stats` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `corpse` WHERE `player` NOT IN (SELECT `guid` FROM `characters`);

DELETE FROM `petition_sign` WHERE `ownerguid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `petition_sign` WHERE `playerguid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `petition` WHERE `ownerguid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `petition` WHERE (SELECT COUNT(*) FROM `petition_sign` WHERE `petitionguid` = `petition`.`petitionguid`) = 0;
DELETE FROM `petition_sign` WHERE `petitionguid` NOT IN (SELECT `petitionguid` FROM `petition`);

DELETE FROM `arena_team_member` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `arena_team` WHERE (SELECT COUNT(*) FROM `arena_team_member` WHERE `arenateamid` = `arena_team`.`arenateamid`) = 0;
DELETE FROM `arena_team_member` WHERE `arenateamid` NOT IN (SELECT `arenateamid` FROM `arena_team`);
DELETE FROM `arena_team_stats` WHERE `arenateamid` NOT IN (SELECT `arenateamid` FROM `arena_team`);

DELETE FROM `guild_member` WHERE `guid` NOT IN (SELECT `guid` FROM `characters`);
DELETE FROM `guild` WHERE (SELECT COUNT(*) FROM `guild_member` WHERE `guildid` = `guild`.`guildid`) = 0;
DELETE FROM `guild_bank_eventlog` WHERE `guildid` NOT IN (SELECT `guildid` FROM `guild`);
DELETE FROM `guild_bank_item` WHERE `guildid` NOT IN (SELECT `guildid` FROM `guild`);
DELETE FROM `guild_bank_right` WHERE `guildid` NOT IN (SELECT `guildid` FROM `guild`);
DELETE FROM `guild_bank_tab` WHERE `guildid` NOT IN (SELECT `guildid` FROM `guild`);
DELETE FROM `guild_eventlog` WHERE `guildid` NOT IN (SELECT `guildid` FROM `guild`);
DELETE FROM `guild_member` WHERE `guildid` NOT IN (SELECT `guildid` FROM `guild`);
DELETE FROM `guild_rank` WHERE `guildid` NOT IN (SELECT `guildid` FROM `guild`);

-- Warning: this query will be executing extremely long in large databases! Add "LIMIT xxx;" at the end!
DELETE FROM `item_instance` WHERE `guid` NOT IN (SELECT `item` FROM `character_inventory`) AND `guid` NOT IN (SELECT `item_guid` FROM `guild_bank_item`) AND `guid` NOT IN (SELECT `item_guid` FROM `mail_items`) AND `guid` NOT IN (SELECT `itemguid` FROM `auction`);

-- MaNGOS internal cleaning
UPDATE `saved_variables` SET `cleaning_flags` = 15;
