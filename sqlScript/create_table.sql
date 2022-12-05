CREATE TABLE food_type (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    my_name varchar(255),
    display_order BIGINT UNSIGNED NOT NULL,
    create_at TIMESTAMP,
    update_at TIMESTAMP,
    PRIMARY key(id)
);


CREATE TABLE category (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    my_name varchar(255),
    display_order BIGINT UNSIGNED NOT NULL,
    food_type_id BIGINT UNSIGNED NULL DEFAULT NULL,
    create_at TIMESTAMP,
    update_at TIMESTAMP,
    PRIMARY key(id),
    FOREIGN KEY(food_type_id) REFERENCES food_type(id)
);


CREATE TABLE food (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    my_name varchar(255),
    picName varchar(255),
    food_desc varchar(1000),
    display_order BIGINT UNSIGNED NOT NULL,
    category_id BIGINT UNSIGNED NULL DEFAULT NULL,
    create_at TIMESTAMP,
    update_at TIMESTAMP,
    PRIMARY key(id),
    FOREIGN KEY(category_id) REFERENCES category(id)
);


CREATE TABLE tag (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    my_name varchar(255),
    display_order BIGINT UNSIGNED NOT NULL,
    create_at TIMESTAMP,
    update_at TIMESTAMP,
    PRIMARY key(id)
);

CREATE TABLE food_link_tag (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    tag_id BIGINT UNSIGNED NOT NULL,
    food_id BIGINT UNSIGNED NOT NULL,
    create_at TIMESTAMP,
    update_at TIMESTAMP,
    PRIMARY key(id),
    FOREIGN KEY(tag_id) REFERENCES tag(id),
    FOREIGN KEY(food_id) REFERENCES food(id)
);


CREATE TABLE food_symbol (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    my_name varchar(255),
    display_order BIGINT UNSIGNED NOT NULL,
    create_at TIMESTAMP,
    update_at TIMESTAMP,
    PRIMARY key(id)
);


CREATE TABLE food_link_food_symbol (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    food_symbol_id BIGINT UNSIGNED NOT NULL,
    food_id BIGINT UNSIGNED NOT NULL,
    create_at TIMESTAMP,
    update_at TIMESTAMP,
    PRIMARY key(id),
    FOREIGN KEY(food_symbol_id) REFERENCES food_symbol(id),
    FOREIGN KEY(food_id) REFERENCES food(id)
);