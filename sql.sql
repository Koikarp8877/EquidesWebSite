CREATE TABLE equide (
    numSIRE int PRIMARY KEY NOT NULL,
    numUELN int NOT NULL,
    nom_equide varchar(100),
    dateNaissance_equide DATE,
    lieuNaissance_equide varchar(50),
    race_equide varchar(50),
    stud_equide varchar(50),
    lieuElevage_equide varchar(50),
    sexe_equide varchar(10),
    robe_equide varchar(50),
    naisseurVeterinaire_equide varchar(50),
    pere_equide int,
    mere_equide int
);

CREATE TABLE registre (
    id_registre INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    equide int,
    fiche_transport int,
    FOREIGN KEY (equide) REFERENCES equide (numSIRE),
    FOREIGN KEY (fiche_transport) REFERENCES fiche_transport (id_deplacement) 
);

CREATE TABLE fiche_transport (
    id_deplacement INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    entree_transport DATE,
    lieuEntree_transport varchar(50),
    motifEntree_transport varchar(200),
    depart_transport DATE,
    lieuDepart_transport varchar(50),
    motifDepart_transport varchar (200)
);

CREATE TABLE traitement (
    id_traitement INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    molecule_traitement varchar(50),
    reference_traitement varchar(50),
    date_traitement DATE,
    commentaire_traitement varchar(255),
    equide int,
    FOREIGN KEY (equide) REFERENCES equide (numSIRE)
);

CREATE TABLE vermifuge (
    id_vermifuge INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_vermifuge varchar(50),
    reference_vermifuge varchar(50),
    commentaire_vermifuge varchar(255),
    date_vermifuge DATE,
    equide int,
    FOREIGN KEY (equide) REFERENCES equide (numSIRE)
);

CREATE TABLE vaccin (
    id_vaccin INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_vaccin varchar(50),
    numLot_vaccin int,
    numUELN int,
    maladieConcernees_vaccin varchar(50),
    dateInjection_vaccin DATE,
    lieu_vaccin varchar(50),
    veterinaire int,
    signature_vaccin varchar(50),
    FOREIGN KEY (veterinaire) REFERENCES veterinaire (id_veterinaire)
);

CREATE TABLE corps (
    id_corps INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    equide int,
    tete_corps varchar(50),
    antG_corps varchar(50),
    antD_corps varchar(50),
    postG_corps varchar(50),
    postD_corps varchar(50),
    marques_corps varchar(255),
    FOREIGN KEY (equide) REFERENCES equide (numSIRE)
);

CREATE TABLE detenteur (
    id_detenteur INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    equide int,
    nom_detenteur varchar(50),
    prenom_detenteur varchar(50),
    mail_detenteur varchar(50),
    password_detenteur varchar(255),
    nbEquide_detenteur int,
    adresse_detenteur int,
    nationalite_detenteur varchar(50),
    signature_detenteur varchar(50),
    dateEnregistrement_detenteur DATE,
    cachetOrganisation_detenteur varchar(50),
    signatureOrganisation_detenteur varchar(50),
    FOREIGN KEY (equide) REFERENCES equide (numSIRE),
    FOREIGN KEY (equide) REFERENCES equide (numSIRE),
    FOREIGN KEY (adresse_detenteur) REFERENCES adresse (id_adresse)
);

CREATE TABLE adresse (
    id_adresse INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    numeroRue_adresse int,
    rue_adresse varchar(50),
    ville_adresse varchar(50),
    codePostale_adresse int,
    pays_adresse varchar(50)
);

CREATE TABLE lieuDetention (
    id_lieuDetention INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    adresse_lieuDetention int,
    typeActivite_lieuDetention varchar(50),
    detenteur int,
    numSIRET int,
    espece_lieuDetention varchar(50),
    race_lieuDetention varchar(50),
    veterinaireTraitant_lieuDetention int,
    veterinaireSanitaire_lieuDetention int,
    organismeSanitaire int,
    marechalFerrant int,
    equide_id int,
    FOREIGN KEY (adresse_lieuDetention) REFERENCES adresse (id_adresse),
    FOREIGN KEY (detentaur) REFERENCES detenteur (id_detenteur),
    FOREIGN KEY (equide) REFERENCES equide (numSIRE),
    FOREIGN KEY (veterinaireSanitaire_lieuDetention) REFERENCES veterinaire (id_veterinaire),
    FOREIGN KEY (veterinaireTraitant_lieuDetention) REFERENCES veterinaire (id_veterinaire),
    FOREIGN KEY (organismeSanitaire) REFERENCES organismeSanitaire (id_organismeSanitaire),
    FOREIGN KEY (marechalFerrant) REFERENCES marechalFerrant (id_marechal)
);

CREATE TABLE registreElevage (
    lieuDetention int,
    FOREIGN KEY (lieuDetention) REFERENCES lieuDetention (id_lieuDetention)
);

CREATE TABLE marechalFerrant (
    id_marechal INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_marechal varchar(50),
    prenom_marechal varchar(50),
    telephone_marechal int
);

CREATE TABLE organismeSanitaire (
    id_organismeSanitaire INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_organismeSanitaire varchar(50),
    adresse_organismeSanitaire int,
    telephone_organismeSanitaire int,
    website_OrganisleSanitaire varchar(50),
    FOREIGN KEY (adresse_organismeSanitaire) REFERENCES adresse (id_adresse)
);

CREATE TABLE veterinaire (
    id_veterinaire INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_veterinaire varchar(50),
    prenom_veterinaire varchar(50),
    habilitationDDCSPP_veterinaire BOOLEAN,
    equide int,
    FOREIGN KEY (equide) REFERENCES equide (numSIRE)
)