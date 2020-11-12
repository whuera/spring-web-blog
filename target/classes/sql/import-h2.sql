ALTER TABLE POST
  ALTER COLUMN create_date SET DEFAULT CURRENT_TIMESTAMP;

-- Users
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (1, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'whuera@gmail.com', 'whuera', 'William', 'Heera',
   1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (2, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'eduardohuera@gmail.com', 'ehuera', 'Eduardo', 'Huera', 1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES (3, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'ana@mail.com', 'ana', 'Ana', 'Surname', 1);

-- Roles
INSERT INTO ROLE (role_id, role)
VALUES (1, 'ROLE_ADMIN');
INSERT INTO ROLE (role_id, role)
VALUES (2, 'ROLE_USER');

-- User Roles
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 1);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (2, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (3, 2);

-- Posts
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (1, 1, 'Title 1',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        --         CURRENT_TIMESTAMP());
        {ts '2016-10-19 11:10:13.247'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (2, 1, 'Title 2',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        --         CURRENT_TIMESTAMP());
        {ts '2016-11-10 11:10:13.247'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (3, 1, 'Title 3',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (4, 1, 'Title 4',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (5, 1, 'Title 5',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (6, 1, 'Title 6',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (7, 2, 'Title 7',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (8, 2, 'Title 8',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (9, 2, 'Title 9',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (10, 2, 'Title 10',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (11, 3, 'Title 11',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (12, 3, 'Title 12',
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());

-- Comments
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 1,
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 2,
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 3,
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 1,
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 2,
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 3,
        'Este es un Blog de prueba, los datos son demostrativos solo para uso educativo o referencia para quien programo este blog',
        CURRENT_TIMESTAMP());