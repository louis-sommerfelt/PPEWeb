-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 08 mars 2021 à 10:03
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pouzybook`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `id_a` int NOT NULL AUTO_INCREMENT,
  `nom_a` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_a`),
  KEY `nom_a` (`nom_a`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id_a`, `nom_a`) VALUES
(1, 'Tolkien');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `toutes_thematiques_c` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `litterature_c` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enfant_jeunesse_c` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vie_pratique_c` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_categorie`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `toutes_thematiques_c`, `litterature_c`, `enfant_jeunesse_c`, `vie_pratique_c`) VALUES
(1, 'fanstastique', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210307151653', '2021-03-07 15:17:01', 1923),
('DoctrineMigrations\\Version20210307152159', '2021-03-07 15:22:05', 1654),
('DoctrineMigrations\\Version20210307152340', '2021-03-07 15:23:45', 2852),
('DoctrineMigrations\\Version20210307152532', '2021-03-07 15:25:38', 2975),
('DoctrineMigrations\\Version20210307152648', '2021-03-07 15:26:52', 958),
('DoctrineMigrations\\Version20210307152728', '2021-03-07 15:27:33', 1602);

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

DROP TABLE IF EXISTS `emprunt`;
CREATE TABLE IF NOT EXISTS `emprunt` (
  `id_em` int NOT NULL AUTO_INCREMENT,
  `dispo_em` tinyint(1) NOT NULL,
  `date_em` date NOT NULL,
  `delais_em` int NOT NULL,
  `id_inscrit` int NOT NULL,
  `id_exemplaire` int NOT NULL,
  PRIMARY KEY (`id_em`),
  KEY `id_inscrit` (`id_inscrit`,`id_exemplaire`),
  KEY `id_exemplaire` (`id_exemplaire`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`id_em`, `dispo_em`, `date_em`, `delais_em`, `id_inscrit`, `id_exemplaire`) VALUES
(1, 0, '2007-03-21', 45, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

DROP TABLE IF EXISTS `exemplaire`;
CREATE TABLE IF NOT EXISTS `exemplaire` (
  `id_exemplaire` int NOT NULL AUTO_INCREMENT,
  `ref_e` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_inscrit` int NOT NULL,
  PRIMARY KEY (`id_exemplaire`),
  KEY `id_inscrit` (`id_inscrit`),
  KEY `id_exemplaire` (`id_exemplaire`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `exemplaire`
--

INSERT INTO `exemplaire` (`id_exemplaire`, `ref_e`, `id_inscrit`) VALUES
(1, '47566', 1);

-- --------------------------------------------------------

--
-- Structure de la table `inscrit`
--

DROP TABLE IF EXISTS `inscrit`;
CREATE TABLE IF NOT EXISTS `inscrit` (
  `id_inscrit` int NOT NULL AUTO_INCREMENT,
  `date_naissance_i` date NOT NULL,
  `nom_i` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom_i` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rue_i` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp_i` int NOT NULL,
  `ville_i` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_i` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_i` int NOT NULL,
  `mot_de_passe_i` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_inscrit`),
  KEY `id_inscrit` (`id_inscrit`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `inscrit`
--

INSERT INTO `inscrit` (`id_inscrit`, `date_naissance_i`, `nom_i`, `prenom_i`, `rue_i`, `cp_i`, `ville_i`, `email_i`, `tel_i`, `mot_de_passe_i`) VALUES
(1, '0000-00-00', 'Picard', 'Jérôme', '13 rue Augustin Le Guen', 22100, 'Quévert', 'jey22@hotmail.fr', 618300934, 'bonjour');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `id_l` int NOT NULL AUTO_INCREMENT,
  `titre_l` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn_l` int NOT NULL,
  `nombre_pages_l` int NOT NULL,
  `edition_l` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee_edition_l` int NOT NULL,
  `langue_l` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format_l` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume_l` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_a` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_exemplaire` int NOT NULL,
  `id_categorie` int NOT NULL,
  PRIMARY KEY (`id_l`),
  KEY `nom_a` (`nom_a`,`id_exemplaire`,`id_categorie`),
  KEY `id_categorie` (`id_categorie`),
  KEY `id_exemplaire` (`id_exemplaire`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id_l`, `titre_l`, `isbn_l`, `nombre_pages_l`, `edition_l`, `annee_edition_l`, `langue_l`, `format_l`, `resume_l`, `nom_a`, `id_exemplaire`, `id_categorie`) VALUES
(1, 'Le seigneur des anneaux', 45845, 282, 'Folio', 0, 'anglais', 'roman', 'Il était une fois dans un petit village nommé le Conté', 'Tolkien', 1, 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD CONSTRAINT `exemplaire_ibfk_1` FOREIGN KEY (`id_exemplaire`) REFERENCES `emprunt` (`id_exemplaire`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `inscrit`
--
ALTER TABLE `inscrit`
  ADD CONSTRAINT `inscrit_ibfk_1` FOREIGN KEY (`id_inscrit`) REFERENCES `emprunt` (`id_inscrit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscrit_ibfk_2` FOREIGN KEY (`id_inscrit`) REFERENCES `exemplaire` (`id_inscrit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`nom_a`) REFERENCES `auteur` (`nom_a`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `livre_ibfk_2` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `livre_ibfk_3` FOREIGN KEY (`id_exemplaire`) REFERENCES `exemplaire` (`id_exemplaire`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
