CREATE TABLE `phones`(
    `id` BIGINT  NOT NULL AUTO_INCREMENT,
    `model` VARCHAR(255) NOT NULL,
    `problem_id` BIGINT,
    `seria_num` BIGINT NOT NULL,
    PRIMARY KEY (`id`)
);
ALTER TABLE
    `phones` ADD PRIMARY KEY(`id`);
CREATE TABLE `clients`(
    `id` BIGINT  NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `contact_num` BIGINT NOT NULL,
    `phone_id` BIGINT NOT NULL
    PRIMARY KEY (`id`)
);

CREATE TABLE `repairs`(
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `name_problem` VARCHAR(255) NOT NULL,
    `price` BIGINT NOT NULL,
    PRIMARY KEY (`id`)

);

ALTER TABLE 
    `clients` ADD CONSTRAINT `for_id_phones` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`id`);

ALTER TABLE     
    `phones` ADD CONSTRAINT `phones_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `repairs`(`id`); 
--! _________________________________________________________________________________________

INSERT INTO `repairs` (`name_problem`, `price`) VALUES
  ('Screen', 100),
  ('Battery ', 50),
  ('Dinamic', 80);

INSERT INTO `phones` (`model`, `problem_id`, `seria_num`) VALUES
  ('Iphone 13', 1, 1234567890),
  ('Iphone 8', 2, 9876543210),
  ('Samsung S21', 3, 2468135790),
  ('Redmi 11', 1, 1357924680),
  ('Nokia 1202', 2, 8642097531);

INSERT INTO `clients` (`name`, `contact_num`, `phone_id`) VALUES
  ('Aliboy', 123456789, 6),
  ('Valiboy', 987654321, 7),
  ('Salimboy', 246813579, 10),
  ('Yana Kimdir', 135792468, 8),
  ('Va Yana Kimdir', 864209753, 9);
