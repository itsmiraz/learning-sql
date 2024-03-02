-- Active: 1709175476422@@127.0.0.1@5432@ph


DROP TABLE "user";

SELECT * from "user";

CREATE Table "user" (
    id SERIAL PRIMARY  KEY,
    name VARCHAR(25)
);
  
CREATE Table posts (
 id SERIAL,
  post VARCHAR(100),
  user_id INT REFERENCES "user"(id)
);


SELECT * from "posts";

INSERT INTO "user"  (name) VALUES ('miraj');

INSERT INTO "user" (name) VALUES 
    ('Alice'),
    ('Bob'),
    ('Charlie');

    INSERT INTO posts (post, user_id) VALUES 
    ('First post by Alice', 1),
    ('Second post by Bob', 2),
    ('Third post by Alice', 1),
    ('Fourth post by Charlie', 3);




    SELECT * from posts;



SELECT post, name FROM posts
JOIN "user" ON posts.user_id = "user".id;


 SELECT post, name FROM posts
  JOIN "user" on posts.user_id = "user".id;
