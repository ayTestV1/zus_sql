INSERT INTO food_type (
    my_name, 
    display_order, 
    create_at, 
    update_at)
VALUES (
    'Drinks', 1, now(), now());


INSERT INTO category (
    my_name, 
    display_order,
    food_type_id, 
    create_at, 
    update_at)
VALUES (
    'OATLY Series', 1, 1, now(), now());


INSERT INTO food (
    my_name, 
    picName,
    food_desc,
    display_order,
    category_id, 
    create_at, 
    update_at)
VALUES (
    'OATLY ZUS Cocoa Mocha (Hot/Iced)', 
    'pic1', 
    'food desc',
    1, 
    1,
    now(), now());

INSERT INTO tag (
    my_name, 
    display_order, 
    create_at, 
    update_at)
VALUES (
    'New', 1, now(), now());


INSERT INTO food_link_tag (
    tag_id, 
    food_id, 
    create_at, 
    update_at)
VALUES (
    1, 1, now(), now());


INSERT INTO food_symbol (
    my_name, 
    display_order, 
    create_at, 
    update_at)
VALUES (
    'Hot', 1, now(), now());



INSERT INTO food_link_food_symbol (
    food_symbol_id, 
    food_id, 
    create_at, 
    update_at)
VALUES (
    1, 1, now(), now());