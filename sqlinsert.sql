/* TABLE equide */
INSERT INTO equide (numSIRE, numUELN, nom_equide, dateNaissance_equide, lieuNaissance_equide, race_equide, stud_equide, lieuElevage_equide, sexe_equide, robe_equide, naisseurVeterinaire_equide, pere_equide, mere_equide )
VALUES (1 , 1, 'equide1', '2023-02-24', 'France', 'Brun de Neully', 'Equitile_stud', 'Paname', 'Mâle', 'robe brune', 'Gilles le naisseur', 2, 3);

INSERT INTO equide (numSIRE, numUELN, nom_equide, dateNaissance_equide, lieuNaissance_equide, race_equide, stud_equide, lieuElevage_equide, sexe_equide, robe_equide, naisseurVeterinaire_equide, pere_equide, mere_equide )
VALUES (2 , 2333443, 'equide2', '2023-02-23', 'France', 'Blonde Heaven', 'Equitile_stud', 'Nancy', 'Mâle', 'robe blonde', 'Pierre le naisseur', 2, 3);

INSERT INTO equide (numSIRE, numUELN, nom_equide, dateNaissance_equide, lieuNaissance_equide, race_equide, stud_equide, lieuElevage_equide, sexe_equide, robe_equide, naisseurVeterinaire_equide, pere_equide, mere_equide )
VALUES (3 , 34443, 'equide3', '2023-02-22', 'France', 'Rousse de Tyse', 'Equitile_stud', 'Paris', 'Femelle', 'robe rousse', 'Edouard le naisseur', 2, 3);

/*TABLE fiche_transport */
INSERT INTO fiche_transport (id_deplacement, entree_transport, lieuEntree_transport, motifEntree_transport, depart_transport, lieuDepart_transport, motifDepart_transport)
VALUES (1 , '2023-02-24', 'Porte de Saint-Ouen', "Prise d'Otage", '2023-02-28', 'Porte de Saint-Ouen', 'Rendu au terro');

/*TABLE registre*/
INSERT INTO registre (id_registre, equide, fiche_transport)
VALUES (1, 1, 1);

/*TABLE traitement*/
INSERT INTO traitement (id_traitement, molecule_traitement, reference_traitement, date_traitement, commentaire_traitement, equide)
VALUES (1, 'Molecule H2O', 'H20 reference', '2023-02-25', "très bon traitement contre l'eau", 1);

INSERT INTO traitement (id_traitement, molecule_traitement, reference_traitement, date_traitement, commentaire_traitement, equide)
VALUES (2, 'Molecule DF65', 'DF65 reference', '2023-02-27', "traitement super bien", 2);

INSERT INTO traitement (id_traitement, molecule_traitement, reference_traitement, date_traitement, commentaire_traitement, equide)
VALUES (3, 'Molecule YYTT', 'YYTT reference', '2022-07-04', "traitement pas ouf", 3);

/*TABLE vermifuge*/
INSERT INTO vermifuge (id_vermifuge, nom_vermifuge, reference_vermifuge, commentaire_vermifuge, date_vermifuge, equide)
VALUES (1, 'Super VERMIFUGE', 'reference vermifuge', 'super le vermifufu', '2023-01-28', 1);

INSERT INTO vermifuge (id_vermifuge, nom_vermifuge, reference_vermifuge, commentaire_vermifuge, date_vermifuge, equide)
VALUES (2, 'Super VERMIFUGE Boisé', 'reference vermifuge2', 'super le vermifufu', '2023-01-01', 3);

/*TABLE corps */
INSERT INTO corps (id_corps, equide, tete_corps, antG_corps, antD_corps, postG_corps, postD_corps, marques_corps)
VALUES (1, 1, 'tache sur le nez', null, null, null, null, 'très bonne marque repère');

INSERT INTO corps (id_corps, equide, tete_corps, antG_corps, antD_corps, postG_corps, postD_corps, marques_corps)
VALUES (2, 2, "tache sur l'oeil", null, null, 'tache jaune', null, null);

INSERT INTO corps (id_corps, equide, tete_corps, antG_corps, antD_corps, postG_corps, postD_corps, marques_corps)
VALUES (3, 3, null, 'cicatrice', null, null, null, 'marqué au fer');

/*TABLE adresse*/
INSERT INTO adresse (id_adresse, numeroRue_adresse, rue_adresse, ville_adresse, codePostale_adresse, pays_adresse)
VALUES (1, 54, 'rue de la Mouette XV', 'Toulouse', 33000, 'France');

INSERT INTO adresse (id_adresse, numeroRue_adresse, rue_adresse, ville_adresse, codePostale_adresse, pays_adresse)
VALUES (2, 4, 'avenue Belle Vue', 'Marseille', 13000, 'France');

INSERT INTO adresse (id_adresse, numeroRue_adresse, rue_adresse, ville_adresse, codePostale_adresse, pays_adresse)
VALUES (3, 13, 'boulvard Henri IV', 'Nancy', 54000, 'France');

/*TABLE detenteur*/
INSERT INTO detenteur (id_detenteur, equide, nom_detenteur, prenom_detenteur, mail_detenteur, password_detenteur, nbEquide_detenteur, adresse_detenteur, nationalite_detenteur, signature_detenteur, dateEnregistrement_detenteur, cachetOrganisation_detenteur, signatureOrganisation_detenteur)
VALUES (1, 1, 'Vador', 'Dark', 'vadordark@mail.com', 'mdp', 2, 1, 'Français', 'img/signature_detenteur/1', '2022-04-05', 'img/cachet/1', 'img/signature_organisation/1');

INSERT INTO detenteur (id_detenteur, equide, nom_detenteur, prenom_detenteur, mail_detenteur, password_detenteur, nbEquide_detenteur, adresse_detenteur, nationalite_detenteur, signature_detenteur, dateEnregistrement_detenteur, cachetOrganisation_detenteur, signatureOrganisation_detenteur)
VALUES (2, 3, 'Malfoix', 'Daglas', 'dagloo@mail.com', 'mdp', 5, 3, 'Français', 'img/signature_detenteur/2', '2021-05-24', 'img/cachet/2', 'img/signature_organisation/2');

INSERT INTO detenteur (id_detenteur, equide, nom_detenteur, prenom_detenteur, mail_detenteur, password_detenteur, nbEquide_detenteur, adresse_detenteur, nationalite_detenteur, signature_detenteur, dateEnregistrement_detenteur, cachetOrganisation_detenteur, signatureOrganisation_detenteur)
VALUES (3, 2, 'Damso', 'Emilien', 'thevie@mail.fr', 'mdp', 1, 2, 'Français', 'img/signature_detenteur/3', '2022-02-24', 'img/cachet/3', 'img/signature_organisation/3');

/*TABLE marechalFerrant*/
INSERT INTO marechalFerrant (id_marechal, nom_marechal, prenom_marechal, telephone_marechal)
VALUES (1, 'La dune', 'Paul', 0601020304);

INSERT INTO marechalFerrant (id_marechal, nom_marechal, prenom_marechal, telephone_marechal)
VALUES (2, 'Crimi', 'Kalash', 0606060606);

INSERT INTO marechalFerrant (id_marechal, nom_marechal, prenom_marechal, telephone_marechal)
VALUES (3, 'Doumams', 'Gilbert', 0712345678);

/*TABLE organismeSanitaire*/
INSERT INTO organismeSanitaire (id_organismeSanitaire, nom_organismeSanitaire, adresse_organismeSanitaire, telephone_organismeSanitaire, website_OrganisleSanitaire)
VALUES (1, 'Organisme de chevaux', 3, 0504030201, 'aimelescheveuaux@mail.fr');

INSERT INTO organismeSanitaire (id_organismeSanitaire, nom_organismeSanitaire, adresse_organismeSanitaire, telephone_organismeSanitaire, website_OrganisleSanitaire)
VALUES (2, 'We Love Hoes', 1, null, 'brosbeforehoes@mail.fr');

/*TABLE veterinaire*/
INSERT INTO veterinaire (id_veterinaire, nom_veterinaire, prenom_veterinaire, habilitationDDCSPP_veterinaire, equide)
VALUES (1, 'Majdid', 'Bruce', true, 1);

INSERT INTO veterinaire (id_veterinaire, nom_veterinaire, prenom_veterinaire, habilitationDDCSPP_veterinaire, equide)
VALUES (2, 'Nikol', 'Hélène', false, 2);

INSERT INTO veterinaire (id_veterinaire, nom_veterinaire, prenom_veterinaire, habilitationDDCSPP_veterinaire, equide)
VALUES (3, 'Zidane', 'Zinedine', true, 3);

/*TABLE lieuDetention*/
INSERT INTO lieuDetention (id_lieuDetention, adresse_lieuDetention, typeActivite_lieuDetention, detenteur, numSIRET, espece_lieuDetention, race_lieuDetention, veterinaireTraitant_lieuDetention, veterinaireSanitaire_lieuDetention, organismeSanitaire, marechalFerrant, equide)
VALUES (1, 1, 'Elevage', 1, 44334, 'espece à robe courte', 'race royal', 1, 1, 1, 1, 1);

INSERT INTO lieuDetention (id_lieuDetention, adresse_lieuDetention, typeActivite_lieuDetention, detenteur, numSIRET, espece_lieuDetention, race_lieuDetention, veterinaireTraitant_lieuDetention, veterinaireSanitaire_lieuDetention, organismeSanitaire, marechalFerrant, equide)
VALUES (2, 2, 'Elevage pour coridda', 3, 0045, 'espece à robe longue', 'race majestieuse', 2, 2, 2, 2, 2);

/*TABLE registreElevage*/
INSERT INTO registreElevage (lieuDetention)
VALUES (1);

INSERT INTO registreElevage (lieuDetention)
VALUES (2);

/*TABLE vaccin*/
INSERT INTO vaccin (id_vaccin, nom_vaccin, numLot_vaccin, numUELN, maladieConcernees_vaccin, dateInjection_vaccin, lieu_vaccin, veterinaire, signature_vaccin)
VALUES (1, 'Vaccin anti cochon', 1, 4435, 'maladie attrape cochon', '2023-02-24', 'Nice', 1, '/img/signature_vaccin/1');