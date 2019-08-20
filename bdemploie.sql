-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 20 août 2019 à 15:39
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdemploie`
--

-- --------------------------------------------------------

--
-- Structure de la table `demandeur`
--

CREATE TABLE `demandeur` (
  `id` int(11) NOT NULL,
  `login1` varchar(200) NOT NULL,
  `password1` varchar(200) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `situation` varchar(200) NOT NULL,
  `diplome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demandeur`
--

INSERT INTO `demandeur` (`id`, `login1`, `password1`, `nom`, `prenom`, `age`, `situation`, `diplome`) VALUES
(1, 'nassim', 'passer', 'NassimA', 'Djoumoi', '23 ans', 'Marie', 'Licence electronique'),
(2, 'hasna', 'passer', 'Hasna', 'Aden', '24 ans', 'celibataire', 'licence Reseau'),
(3, 'awa', 'passer', 'Awa', 'Niang', '25 ans', 'celibataire', 'Baccalaureat'),
(4, 'hasnaaden37@gmail.com', 'passer', 'hali', 'aden', '24', 'celibataire', 'doctorat'),
(5, 'sergi@gmail.fr', 'passer', 'passer', 'sergi', '25', 'ID', 'BA');

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `login` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id`, `nom`, `login`, `password`) VALUES
(1, 'Sonatel', 'sonatel', 'passer'),
(2, 'Wari', 'wari', 'passer'),
(3, 'Smile', 'smile', 'passer'),
(4, 'sonatel', 'hasna-maki95@gmail.com', 'passer'),
(5, 'semos1', 'semos1@gmail.com', 'passer');

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `id` int(11) NOT NULL,
  `libelles` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `entreprise` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id`, `libelles`, `date`, `entreprise`) VALUES
(4, 'secretaire', '7/8/2019', 'senelec'),
(5, 'chefdeprojet', '7/8/2019', 'sonatel'),
(8, 'chauffeur', '', 'sonatel'),
(9, '', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `demandeur`
--
ALTER TABLE `demandeur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `demandeur`
--
ALTER TABLE `demandeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
