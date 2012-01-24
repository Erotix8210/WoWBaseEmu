UPDATE item_loot_template SET
ChanceOrQuestChance=100
WHERE entry=34871 AND item=34869;

DELETE from item_required_target where entry=34869;
INSERT into item_required_target VALUES
(34869,2,25430);

DELETE from creature_ai_scripts where id=2543003;
INSERT INTO creature_ai_scripts VALUES
(2543003, 25430, 8, 0, 100, 0, 45742, -1, 0, 0, 33, 25581, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Magmothregar  - credit after spellhit');