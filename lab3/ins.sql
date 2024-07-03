INSERT INTO coordinates (id, x_cor, y_cor)
VALUES
(1, 0 , 0),
(2, 50, 50),
(3, 389, 0),
(4, 23, 500),
(5, 100, 100),
(6, 111, 121);

INSERT INTO area_object (id, obj_name, coor_id)
VALUES
(1, 'edge', 1),
(2, 'landscape', 2),
(3, 'home', 3),
(4, 'garden', 4);

INSERT INTO characterr (id, char_name, location_area_id)
VALUES
(1, 'Dzhiziruck', 1),
(2, 'person', 2);

INSERT INTO life (id, started_at, ended_at, char_owner_id)
VALUES
(1, NULL, NULL, 1),
(2, '2001-12-21 04:05:06', NULL, 1),
(3, '1955-10-15 02:10:48', '1997-01-27 14:33:01', 1);

INSERT INTO nature_object (id, nat_name, situated_at_area_id)
VALUES
(1, 'dune', 2),
(2, 'hill', 2),
(3, 'tree', 4),
(4, 'grass', 4);

INSERT INTO enchantment (id, ench_name, source_area_obj_id, destination_char_id)
VALUES (1, 'beauty', 2, 1);