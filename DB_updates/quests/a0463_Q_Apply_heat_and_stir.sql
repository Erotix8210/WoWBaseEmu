-- support for Apply Heat and Stir - quest 11306

-- cast Successful Mix with final Mixing Vrykul Blood

DELETE FROM `spell_scripts` WHERE `id`=43375;
INSERT INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`,comments) 
VALUES (43375,0,15,43377,1,0,0,0,0,0,'succesfull mix');