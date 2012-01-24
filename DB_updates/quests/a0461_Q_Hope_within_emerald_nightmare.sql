-- Fix for quest Hope Within the Emerald Nightmare (by Bastek)
DELETE FROM quest_start_scripts WHERE id = 13074;
INSERT INTO quest_start_scripts (id, delay, command, datalong, datalong2, comments)
VALUES (13074, 0, 15, 57413, 0, "quest giver casts Fitful Dream on quest accept");

UPDATE quest_template SET StartScript = 13074 WHERE entry = 13074;
