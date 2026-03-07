-- Hello World SQL Program
-- In order to demostrates a simple SQL table and query

CREATE TABLE hello_world (
    id INT PRIMARY KEY,
    message VARCHAR(50)
);

INSERT INTO hello_world (id, message)
VALUES (1, 'Hello World');

SELECT * FROM hello_world;