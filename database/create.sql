/* 
    Ce fichier contient la définition des tables utilisé dans la projet herault-events
*/
/* 
    Suppression des tables si ils existes
*/


DROP TABLE IF EXISTS interested;
DROP TABLE IF EXISTS participate;
DROP TABLE IF EXISTS commentaire;

DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS adresse;

/* 
    Création des tables
*/
/* Table adress*/
CREATE TABLE adresse (
    id_adresse INT AUTO_INCREMENT,
    num_rue INT NOT NULL,
    nom_rue VARCHAR(255) NOT NULL,
    ville VARCHAR(255) NOT NULL,
    pays VARCHAR(255) NOT NULL,
    code_postal INT(5) NOT NULL,
    additional_adresse VARCHAR(255),
    CONSTRAINT PK_adresse PRIMARY KEY (id_adresse)
);

/* Table user */
CREATE TABLE user (
    pseudo VARCHAR(100),
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    date_nai DATETIME NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    tel VARCHAR(20) UNIQUE,
    mdp VARCHAR(255) NOT NULL,
    date_inscr DATETIME NOT NULL,
    role_user ENUM('visitor', 'contributor', 'admin') NOT NULL DEFAULT 'visitor',
    id_adresse INT,
    CONSTRAINT PK_user PRIMARY KEY (pseudo),
    CONSTRAINT FK_user_adresse FOREIGN KEY (id_adresse) REFERENCES adresse(id_adresse)
);

/*table event*/
CREATE TABLE events (
    id_event INT AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    date_event DATETIME NOT NULL,
    description_event text,
    min_participant INT,
    max_participant INT,
    gps_coord INT,
    id_adresse INT,
    CONSTRAINT CHK_events_adresse CHECK (gps_coord IS NOT NULL OR id_adresse IS NOT NULL),
    pseudo_contributor VARCHAR(100) NOT NULL,
    CONSTRAINT PK_events PRIMARY KEY (id_event),
    CONSTRAINT FK_events_adresse FOREIGN KEY (id_adresse) REFERENCES adresse(id_adresse),
    CONSTRAINT FK_events_user FOREIGN KEY (pseudo_contributor) REFERENCES user(pseudo)
);

/*table commentaire*/
CREATE TABLE commentaire(
    id_event INT,
    pseudo VARCHAR(100),
    date_commentaire DATETIME,
    text_commentaire TEXT NOT NULL,
    CONSTRAINT PK_commentaire PRIMARY KEY (id_event, pseudo, date_commentaire),
    CONSTRAINT FK_commentaire_events FOREIGN KEY (id_event) REFERENCES events(id_event),
    CONSTRAINT FK_commentaire_user FOREIGN KEY (pseudo) REFERENCES user(pseudo)
);

/*table participate*/
CREATE TABLE participate(
    id_event INT,
    pseudo VARCHAR(100),
    note INT(1),
    CONSTRAINT CHK_participate_note CHECK (note IN (0,1,2,3,4,5)),
    CONSTRAINT PK_participate PRIMARY KEY (id_event, pseudo),
    CONSTRAINT FK_participate_events FOREIGN KEY (id_event) REFERENCES events(id_event),
    CONSTRAINT FK_participate_user FOREIGN KEY (pseudo) REFERENCES user(pseudo)
);

/*table interested*/
CREATE TABLE interested(
    id_event INT,
    pseudo VARCHAR(100),
    CONSTRAINT PK_interested PRIMARY KEY (id_event, pseudo),
    CONSTRAINT FK_interested_events FOREIGN KEY (id_event) REFERENCES events(id_event),
    CONSTRAINT FK_interested_user FOREIGN KEY (pseudo) REFERENCES user(pseudo)
);
