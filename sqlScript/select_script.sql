SELECT f.my_name, ft.my_name , c.my_name, t.my_name, fs.my_name 
FROM food f
INNER JOIN category c ON c.id = f.category_id  
INNER JOIN food_type ft ON ft.id = c.food_type_id 
left  JOIN food_link_tag flt ON flt.food_id = f.id
left JOIN food_link_food_symbol flfs ON flfs.food_id = f.id
left JOIN tag t ON t.id = flt.tag_id 
left JOIN food_symbol fs ON fs.id = flfs.food_symbol_id;
