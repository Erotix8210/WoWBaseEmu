-- Add flight option for players (NPC Jean Pierre Poulain) (by Bastek)
DELETE FROM gossip_menu_option WHERE menu_id = 10478;
INSERT INTO gossip_menu_option VALUES
(10478, 0, 0, 'I''ll take the flight.', 1, 1, 0, 0, 10478, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM gossip_scripts WHERE id = 10478;
INSERT INTO gossip_scripts VALUES
(10478, 1, 15, 64795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[DND] Dalaran -> Argent Tournament');