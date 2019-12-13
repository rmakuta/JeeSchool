CREATE SCHEMA `school` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci ;

CREATE TABLE `school`.`user_group` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NULL,
    PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_polish_ci;

CREATE TABLE `school`.`exercise` (
     `id` INT NOT NULL AUTO_INCREMENT,
     `name` VARCHAR(255) NULL,
     `description` VARCHAR(255) NULL,
     PRIMARY KEY (`id`),
     UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_polish_ci;

CREATE TABLE `school`.`users` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `name` VARCHAR(255) NULL,
      `email` VARCHAR(255) NULL,
      `password` VARCHAR(255) NULL,
      `groupid` INT NOT NULL,
      PRIMARY KEY (`id`),
      UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
      CONSTRAINT `groupid`
          FOREIGN KEY (`id`)
              REFERENCES `school`.`user_group` (`id`)
              ON DELETE NO ACTION
              ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_polish_ci;

CREATE TABLE `school`.`solution` (
     `id` INT NOT NULL AUTO_INCREMENT,
     `created` VARCHAR(255) NULL,
     `updated` VARCHAR(255) NULL,
     `description` VARCHAR(255) NULL,
     `exerciseid` INT NOT NULL,
     `usersid` INT NOT NULL,
     PRIMARY KEY (`id`),
     UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
     CONSTRAINT `exerciseid`
         FOREIGN KEY (`id`)
             REFERENCES `school`.`exercise` (`id`)
             ON DELETE NO ACTION
             ON UPDATE NO ACTION,
     CONSTRAINT `usersid`
         FOREIGN KEY (`id`)
             REFERENCES `school`.`users` (`id`)
             ON DELETE NO ACTION
             ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_polish_ci;

INSERT INTO `school`.`user_group` (`name`) VALUES ('pierwsza'), ('druga'), ('trzecia');

INSERT INTO `school`.`exercise` (`name`, `description`) VALUES
    ('pierwsze', 'opis pierwszego zadania'),
    ('drugie', 'opis drugiego zadania'),
    ('trzecie', 'opis trzeciego zadania');

INSERT INTO `school`.`users` (`name`, `email`, `password`, `groupid`) VALUES
     ('pierwszy', 'pierwszy@zadania.pl', '123', '3'),
     ('drugi', 'drugi@zadania.pl', '123', '2'),
     ('trzeci', 'trzeci@zadania.pl', '123', '1');

INSERT INTO `school`.`solution` (`id`, `description`, `exerciseid`, `usersid`) VALUES
      ('1', 'first solution', '1', '1'),
      ('2', 'second solution', '1', '2'),
      ('3', 'third soltion', '1', '3'),
      ('4', 'fourth solution', '2', '1'),
      ('5', 'fifth solution', '2', '2'),
      ('6', 'sixth solution', '2', '3');

