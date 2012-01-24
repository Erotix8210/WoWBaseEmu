UPDATE creature_template SET 
AIName='EventAI',
unit_flags=unit_flags |4 
WHERE entry IN(25490,25492,25493);

DELETE FROM creature_ai_scripts WHERE creature_id IN(25490,25492,25493);
INSERT INTO creature_ai_scripts VALUES
(2549001, 25490, 8, 0, 100, 1, 45653, -1, 0, 0, 33, 25490, 6, 37, 0, 0, 0, 0, 0, 0, 0, 0, 'East Cauldron -Quest Credit on item use'),
(2549201, 25492, 8, 0, 100, 1, 45653, -1, 0, 0, 33, 25492, 6, 37, 0, 0, 0, 0, 0, 0, 0, 0, 'Central Cauldron -Quest Credit on item use'),
(2549301, 25493, 8, 0, 100, 1, 45653, -1, 0, 0, 33, 25493, 6, 37, 0, 0, 0, 0, 0, 0, 0, 0, 'West Cauldron -Quest Credit on item use');