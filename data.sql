CREATE TABLE fish_type (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE fish_type
    MODIFY id INT NOT NULL AUTO_INCREMENT;

CREATE TABLE stuff (
    id INT NOT NULL AUTO_INCREMENT,
    model VARCHAR(255) NOT NULL,
    serialNum VARCHAR(255) NOT NULL,
);

CREATE TABLE branch (
    id INT NOT NULL AUTO_INCREMENT,
    location VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE fish (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NULL,
    fish_type_id INT NOT NULL,
    description VARCHAR(255) NOT NULL,
    branch_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fish_type_id) REFERENCES fish_type(id),
    FOREIGN KEY (branch_id) REFERENCES branch(id)
);




DESCRIBE fish_type;
DESCRIBE stuff;
DESCRIBE branch;
DESCRIBE fish;



INSERT INTO branch (location) VALUES ("Katortol");
INSERT INTO branch (location) VALUES ("Chorsu");
INSERT INTO branch (location) VALUES ("Qoraqoyin");
INSERT INTO branch (location) VALUES ("Qorabuloq");
INSERT INTO branch (location) VALUES ("Oqbuloq");
INSERT INTO branch (location) VALUES ("Qizilbuloq");




INSERT INTO fish (name, fish_type_id, description, branch_id)
VALUES ("Sazan", 1 , "Wild", 3)

INSERT INTO fish (name, fish_type_id, description, branch_id)
VALUES ("Marinka", 3 , "Patient", 2);

INSERT INTO fish (name, fish_type_id, description, branch_id)
VALUES ("Shark", 1 , "Wild", 1);

INSERT INTO fish (name, fish_type_id, description, branch_id)
VALUES ("Sazan", 1 , "Wild", 3)

INSERT INTO fish (name, fish_type_id, description, branch_id)
VALUES ("Sazan", 1 , "Wild", 3)