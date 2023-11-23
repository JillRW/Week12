DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS project;


CREATE TABLE project(
project_id INT AUTO_INCREMENT NOT NULL,
project_name VARCHAR(128) NOT NULL,
estimated_hours DECIMAL,
actual_hours DECIMAL,
difficulty INT,
notes TEXT,
PRIMARY KEY (project_id)
);

CREATE TABLE category(
category_id INT AUTO_INCREMENT NOT NULL,
category_name VARCHAR(64) NOT NULL,
PRIMARY KEY (category_id)
);

CREATE TABLE project_category(
project_id INT NOT NULL,
category_id INT NOT NULL,
FOREIGN KEY (project_id) REFERENCES project (project_id) ON DELETE CASCADE,
FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE CASCADE,
UNIQUE KEY (project_id, category_id)
);

CREATE TABLE step(
step_id INT AUTO_INCREMENT NOT NULL,
project_id INT NOT NULL,
step_text TEXT,
step_order INT NOT NULL,
PRIMARY KEY (step_id),
FOREIGN KEY (project_id) REFERENCES project (project_id) ON DELETE CASCADE
);

CREATE TABLE material(
material_id INT AUTO_INCREMENT NOT NULL,
project_id INT NOT NULL,
material_name VARCHAR(64) NOT NULL,
num_required INT NOT NULL,
cost DECIMAL(6, 2),
PRIMARY KEY (material_id),
FOREIGN KEY (project_id) REFERENCES project (project_id) ON DELETE CASCADE
);

INSERT INTO project (project_name, estimated_hours, actual_hours, difficulty, notes) VALUES('Replace a light fixture', 2, 3, 3, 'materials from Lowes');
INSERT INTO material(project_id, material_name, num_required, cost) VALUES(1, 'LED bulbs', 2, 15.00);
INSERT INTO material(project_id, material_name, num_required, cost) VALUES(1, 'wires', 4, 8.00);
INSERT INTO step(project_id, step_text, step_order) VALUES(1, 'check breaker', 1);
INSERT INTO step(project_id, step_text, step_order) VALUES(1, 'organize materials', 2);
INSERT INTO category(category_id, category_name) VALUES(1, 'Lights');
INSERT INTO category(category_id, category_name) VALUES(2, 'Repairs');
INSERT INTO category(category_id, category_name) VALUES(3, 'Gardening');
INSERT INTO project_category(project_id, category_id) VALUES(1, 1);
INSERT INTO project_category(project_id, category_id) VALUES(1, 2);














