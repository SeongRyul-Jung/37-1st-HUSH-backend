-- migrate:up
CREATE TABLE divisions (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY (id)
)
-- migrate:down
DROP TABLE divisions;