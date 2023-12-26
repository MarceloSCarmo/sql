-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema art
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `art` ;

-- -----------------------------------------------------
-- Schema art
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `art` DEFAULT CHARACTER SET utf8 ;
USE `art` ;

-- -----------------------------------------------------
-- Table `art`.`artist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `art`.`artist` ;

CREATE TABLE IF NOT EXISTS `art`.`artist` (
  `artist_id` INT NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(45) NOT NULL,
  `middle_name` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `dob` YEAR(4) NOT NULL,
  `dod` YEAR(4) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `local` ENUM('y', 'n') NOT NULL,
  PRIMARY KEY (`artist_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art`.`art`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `art`.`art` ;

CREATE TABLE IF NOT EXISTS `art`.`art` (
  `art_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `year` YEAR(4) NOT NULL,
  `file` VARCHAR(45) NOT NULL,
  `type` INT NOT NULL,
  `period` VARCHAR(45) NOT NULL,
  `artist_id` INT NOT NULL,
  PRIMARY KEY (`art_id`),
  INDEX `fk_art_artist_idx` (`artist_id` ASC) VISIBLE,
  CONSTRAINT `fk_art_artist`
    FOREIGN KEY (`artist_id`)
    REFERENCES `art`.`artist` (`artist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art`.`keyword`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `art`.`keyword` ;

CREATE TABLE IF NOT EXISTS `art`.`keyword` (
  `keyword_id` INT NOT NULL,
  `keyword` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`keyword_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art`.`art_has_keyword`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `art`.`art_has_keyword` ;

CREATE TABLE IF NOT EXISTS `art`.`art_has_keyword` (
  `art_id` INT NOT NULL,
  `keyword_id` INT NOT NULL,
  PRIMARY KEY (`art_id`, `keyword_id`),
  INDEX `fk_art_has_keyword_keyword1_idx` (`keyword_id` ASC) VISIBLE,
  INDEX `fk_art_has_keyword_art1_idx` (`art_id` ASC) VISIBLE,
  CONSTRAINT `fk_art_has_keyword_art1`
    FOREIGN KEY (`art_id`)
    REFERENCES `art`.`art` (`art_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_art_has_keyword_keyword1`
    FOREIGN KEY (`keyword_id`)
    REFERENCES `art`.`keyword` (`keyword_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


INSERT INTO artist VALUES
	(DEFAULT, 'Van Gogh', '', 'Vincent', 1853, 1890, 'France','n'),
    (DEFAULT, 'Van Rijn', 'Harmenszoon', 'Rembrandt', 1853, 1890, 'Nederlands','n'),
    (DEFAULT, 'Da Vinci', '', 'Leonardo', 1452, 1519, 'Italy', 'n'),
    (DEFAULT, 'Coy', 'Lonzo', 'Venture', 1965, '', 'United States', 'y'),
    (DEFAULT, 'Gill', '', 'Deborah', 1970, '', 'United States', 'y'),
    (DEFAULT, 'Monet', '', 'Claude', 1840, 1926, 'France','n'),
    (DEFAULT, 'Picasso', '', 'Pablo', 1904, 1973, 'Spain','n'),
    (DEFAULT, 'Simoni', 'di Lodovico', 'Michelangelo', 1475, 1564, 'Italy','n');

INSERT INTO art VALUES
	(1, 'Irises', 1889, 'irises.jpg', 'Oil', 'Impressionism', 1),
    (2, 'The Starry Night', 1889, 'starrynight.jpg', 'Oil', 'Post-Impressionism', 1),
    (3, 'Sunflowers', 1888, 'sunflowers.jpg', 'Oil', 'Impressionism', 1),
    (4, 'Night Watch', 1642, 'nightwatch.jpg', 'Oil', 'Baroque', 2),
    (5, 'Storm on the Sea of Galilee', 1633, 'stormgalilee.jpg', 'Oil', 'Dutch Golden Age', 2),
    (6, 'Head of a Woman', 1508, 'headwoman.jpg', 'Oil', 'High Renaissance', 3),
    (7, 'Last Supper', 1498, 'lastsupper.jpg', 'Tempra', 'Renaissance', 3),
    (8, 'Mona Lisa', 1517, 'monalisa.jpg', 'Oil', 'Renaissance', 3),
    (9, 'Hillside Stream', 2005, 'hillsidestream.jpg', 'Oil', 'Modern', 4),
    (10, 'Old Barn', 1992, 'oldbarn.jpg', 'Oil', 'Modern', 4),
    (11, 'Beach Baby', 1999, 'beachbaby.jpg', 'Watercolor', 'Modern', 5),
    (12, 'Women in the Garden', 1866, 'womengarden.jpg', 'Oil', 'Impressionism', 6),
    (13, 'Old Guitarist', 1904, 'guitarist.jpg', 'Oil', 'Modern', 7);
    

INSERT INTO keyword VALUES
	(1, 'flowers'),
    (2, 'blue'),
    (3, 'landscape'),
    (4, 'flowers'),
    (5, 'girl'),
    (6, 'people'),
    (7, 'battle'),
    (8, 'boat'),
    (9, 'water'),
    (10, 'people'),
    (11, 'Christ'),
    (12, 'girl'),
    (13, 'people'),
    (14, 'food'),
    (15, 'people'),
    (16, 'Christ'),
    (17, 'girl'),
    (18, 'people'),
    (19, 'water'),
    (20, 'landscape'),
    (21, 'landscape'),
    (22, 'landscape'),
    (23, 'people'),
    (24, 'flowers'),
    (25, 'blue'),
    (26, 'people');
    
    
    
    