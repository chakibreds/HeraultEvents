INSERT INTO adresse VALUES(NULL,'14','rue','ville','pays','34000','cmp');
INSERT INTO user (`pseudo`, `nom`, `prenom`, `civilite`, `date_nai`, `email`, `tel`, `mdp`, `date_inscr`, `role_user`, `id_adresse`,`url_image`,`bio`) VALUES  ('jhon','Doe','Jhon','monsieur','1999\-01\-01','jhon\.doe@mail\.com','0123456789','$2y$10$ORXEzz1ajSUweXpjTr7xkuf0zuI\.Pth/g63yQyAxgq2WaicdszXDS','2019\-12\-09 18\:50\:13','visitor','3','','');
INSERT INTO adresse VALUES(NULL,'25','Triolet','Montpellier','France','34000','');
INSERT INTO events (`id_event`,`titre`,`date_event`,`description_event`,`min_participant`,`max_participant`,`id_adresse`,`url_image`,`pseudo_contributor`,`theme`) VALUES (NULL,'Soutenance projet Web','2019\-12\-16 09\:00\:00','Ra7 tetbetchek\.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua\. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat\. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur\. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','2','3','4','1105133\-skyrim\-logo\.jpg','Y2ssam','informatique');
INSERT INTO theme (`titre`) VALUES ( ''science'' );
INSERT INTO adresse VALUES(NULL,''1'',''Mouloudji'',''Montpellier'',''France'',''34070'','''');
INSERT INTO events (`id_event`,`titre`,`date_event`,`description_event`,`min_participant`,`max_participant`,`id_adresse`,`url_image`,`pseudo_contributor`,`theme`) VALUES (NULL,''Event scientifique'',''2019-12-10 08:15:00'',''Évenement scientifique'',''50'',''3000'',''5'',''science.jpg'',''Y2ssam'',''science'');
INSERT INTO events (`id_event`,`titre`,`date_event`,`description_event`,`min_participant`,`max_participant`,`id_adresse`,`url_image`,`pseudo_contributor`,`theme`) VALUES (NULL,'Soutenance projet Web','2019\-12\-17 09\:00\:00','Rah tetbetchek','2','2','4','1105133\-skyrim\-logo\.jpg','Y2ssam','informatique');
INSERT INTO adresse VALUES(NULL,'29','Frederic Peyson','Montpellier','France','34000','');

INSERT INTO adresse VALUES(NULL,'15','Colin','Montpellier','France','34000','etage 2 appt 23');
INSERT INTO adresse VALUES(NULL,'15','Colin','Montpellier','France','34000','etage 2 appt 22');
