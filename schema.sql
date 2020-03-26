CREATE TABLE categories (
     id INT(15) NOT NULL,
     title varchar(45) NOT NULL,
     alias varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE lots (
     id INT(15) NOT NULL,
     date_create datetime NOT NULL,
     title varchar(45) NOT NULL,
     description text NOT NULL,
     image varchar(100) NOT NULL,
     start_price decimal(10,0) NOT NULL,
     completion_date datetime NOT NULL,
     bet_step int(15) NOT NULL,
     user_id int(15) NOT NULL,
     category_id int(15) NOT NULL,
     winner_id int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE bets (
     id INT(15) NOT NULL,
     date datetime NOT NULL,
     price decimal(10,0) NOT NULL,
     user_id int(15) NOT NULL,
     lot_id int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE users (
     id INT(15) NOT NULL,
     registration_date datetime NOT NULL,
     email varchar(100) NOT NULL,
     username varchar(45) NOT NULL,
     password varchar(255) NOT NULL,
     avatar varchar(100) NOT NULL,
     contacts varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE categories
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY title (title),
    ADD UNIQUE KEY alias (alias);

ALTER TABLE lots
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY user_id (user_id),
    ADD UNIQUE KEY category_id (category_id),
    ADD UNIQUE KEY winner_id (winner_id);

ALTER TABLE bets
    ADD PRIMARY KEY (id),
    ADD KEY user_id (user_id),
    ADD KEY lot_id (lot_id);

ALTER TABLE users
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY username (username),
    ADD UNIQUE KEY email (email);

ALTER TABLE lots
    ADD CONSTRAINT lots_1 FOREIGN KEY (user_id) REFERENCES users (id),
    ADD CONSTRAINT lots_2 FOREIGN KEY (category_id) REFERENCES categories (id),
    ADD CONSTRAINT lots_3 FOREIGN KEY (winner_id) REFERENCES users (id);
COMMIT;

ALTER TABLE bets
    ADD CONSTRAINT bets_1 FOREIGN KEY (user_id) REFERENCES users (id),
    ADD CONSTRAINT bets_2 FOREIGN KEY (lot_id) REFERENCES lots (id);
