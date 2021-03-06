DELETE FROM script_waypoint WHERE entry = 31279;
INSERT INTO script_waypoint (entry, pointid,location_x, location_y, location_z, point_comment)  VALUES
('31279','0','6718.17','3450.5','683.381',''),
('31279','1','6717.97','3437.06','682.197',''),
('31279','2','6724.11','3432.65','682.197',''),
('31279','3','6736','3437.43','681.589',''),
('31279','4','6746','3447.17','678.599',''),
('31279','5','6753.84','3455.03','676.181',''),
('31279','6','6763.65','3462.36','673.466',''),
('31279','7','6773.11','3471.05','673.158',''),
('31279','8','6781.69','3478.94','673.829',''),
('31279','9','6792.43','3483.51','677.143',''),
('31279','10','6804.08','3483.15','681.437',''),
('31279','11','6815.73','3482.8','686.021',''),
('31279','12','6825.44','3480.85','688.802',''),
('31279','13','6837.09','3480.99','690.846',''),
('31279','14','6851.09','3480.57','692.63',''),
('31279','15','6866.23','3480.11','694.17',''),
('31279','16','6879.63','3479.6','695.347',''),
('31279','17','6895.35','3478.7','698.316',''),
('31279','18','6908.76','3478.91','700.92',''),
('31279','19','6922.19','3479.34','703.411',''),
('31279','20','6933.24','3479.71','706.504',''),
('31279','21','6945.09','3476.83','708.62',''),
('31279','22','6959.63','3472.55','710.255',''),
('31279','23','6973.58','3468.33','710.857',''),
('31279','24','6979.98','3465.98','710.785',''),
('31279','25','6992.21','3462.08','704.664',''),
('31279','26','7007.54','3456.99','696.871',''),
('31279','27','7019.16','3451.59','696.672',''),
('31279','28','7031.46','3443.81','696.066',''),
('31279','29','7044.28','3434.66','695.411',''),
('31279','30','7057.49','3426.16','694.852',''),
('31279','31','7070.49','3420.16','694.852','');

DELETE FROM script_texts WHERE entry IN (-1999766,-1999765,-1999764,-1999763);
INSERT INTO script_texts (entry,content_default,COMMENT) VALUES
(-1999766,'The Light\'s blessing be upon you for aiding me in my time of need, $N.', 'Father  Kamaros - quest accepted'),
(-1999765,'I\'ve had my fill of this place. Let us depart.', 'Father  Kamaros - shortly after escort start'),
(-1999764,'You must tell my brothers that I live.', 'Father  Kamaros - escort completed 1'),
(-1999763,'I have you to thank  for my life. I will return to my comrades and spread word of your bravery. Fight the Scourge with all the strenghth you can muster, and we will be by your side.', 'Father  Kamaros - escort completed 2');

UPDATE creature_template SET scriptname = 'npc_father_kamaros' WHERE entry = 31279;