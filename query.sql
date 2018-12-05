INSERT INTO AUTHORITY(id, authority) VALUES (1, 'COMPANY_CREATE');
INSERT INTO AUTHORITY(id, authority) VALUES (2, 'COMPANY_READ');
INSERT INTO AUTHORITY(id, authority) VALUES (3, 'COMPANY_UPDATE');
INSERT INTO AUTHORITY(id, authority) VALUES (4, 'COMPANY_DELETE');
INSERT INTO AUTHORITY(id, authority) VALUES (5, 'DEPARTMENT_CREATE');
INSERT INTO AUTHORITY(id, authority) VALUES (6, 'DEPARTMENT_READ');
INSERT INTO AUTHORITY(id, authority) VALUES (7, 'DEPARTMENT_UPDATE');
INSERT INTO AUTHORITY(id, authority) VALUES (8, 'DEPARTMENT_DELETE');

INSERT INTO USER_(id, username, password, enabled)
  VALUES (1, 'admin', /*admin1234*/'$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035ha', TRUE);
INSERT INTO USER_(ID, username, password, enabled)
  VALUES (2, 'reader', /*reader1234*/'$2a$08$dwYz8O.qtUXboGosJFsS4u19LHKW7aCQ0LXXuNlRfjjGKwj5NfKSe', TRUE);
INSERT INTO USER_(ID, username, password, enabled)
  VALUES (3, 'modifier', /*modifier1234*/'$2a$08$kPjzxewXRGNRiIuL4FtQH.mhMn7ZAFBYKB3ROz.J24IX8vDAcThsG', TRUE);
INSERT INTO USER_(id, username, password, enabled)
  VALUES (4, 'reader2', /*reader1234*/'$2a$08$vVXqh6S8TqfHMs1SlNTu/.J25iUCrpGBpyGExA.9yI.IlDRadR6Ea', TRUE);
  
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (1, 1);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (1, 2);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (1, 3);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (1, 4);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (1, 5);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (1, 6);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (1, 7);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (1, 8);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (2, 2);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (2, 6);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (3, 3);
INSERT INTO USERS_AUTHORITIES(user_id, authority_id) VALUES (3, 7);



INSERT INTO company VALUES(1, true, 'HP');
INSERT INTO company VALUES(2, true, 'TOSHIBA');
INSERT INTO company VALUES(3, true, 'DELL');
INSERT INTO company VALUES(4, true, 'LG');
INSERT INTO company VALUES(5, true, 'LOGITECH');
INSERT INTO company VALUES(6, true, 'XIAOMI');

--create extension pgcrypto;
INSERT INTO car(id, enabled, id_company, registration_number) VALUES(1, true, 1, '12412jkhad');
INSERT INTO car(id, enabled, id_company, registration_number) VALUES(2, true, 2, encode(digest( to_char(now(), 'YYYY-MM-DD HH:MI:SS:MS:US'), 'sha256'), 'hex' ));
INSERT INTO car(id, enabled, id_company, registration_number) VALUES(3, true, 3, encode(digest( to_char(now(), 'YYYY-MM-DD HH:MI:SS:MS:US'), 'sha256'), 'hex' ));
INSERT INTO car(id, enabled, id_company, registration_number) VALUES(4, true, 4, encode(digest( to_char(now(), 'YYYY-MM-DD HH:MI:SS:MS:US'), 'sha256'), 'hex' ));
INSERT INTO car(id, enabled, id_company, registration_number) VALUES(5, true, 5, encode(digest( to_char(now(), 'YYYY-MM-DD HH:MI:SS:MS:US'), 'sha256'), 'hex' ));
INSERT INTO car(id, enabled, id_company, registration_number) VALUES(6, true, 6, encode(digest( to_char(now(), 'YYYY-MM-DD HH:MI:SS:MS:US'), 'sha256'), 'hex' ));

INSERT INTO department(id, enabled, id_company, name) VALUES(1, true, 1, 'DESARROLLO');
INSERT INTO department(id, enabled, id_company, name) VALUES(2, true, 1, 'DISEÑO');
INSERT INTO department(id, enabled, id_company, name) VALUES(3, true, 1, 'ANÁLISIS');
INSERT INTO department(id, enabled, id_company, name) VALUES(4, true, 1, 'DOCUMENTACIÓN');
INSERT INTO department(id, enabled, id_company, name) VALUES(5, true, 1, 'PRUEBAS');
INSERT INTO department(id, enabled, id_company, name) VALUES(6, true, 1, 'OPERACIONES');

INSERT INTO department(id, enabled, id_company, name) VALUES(7, true, 2, 'DESARROLLO');
INSERT INTO department(id, enabled, id_company, name) VALUES(8, true, 2, 'DISEÑO');
INSERT INTO department(id, enabled, id_company, name) VALUES(9, true, 2, 'ANÁLISIS');
INSERT INTO department(id, enabled, id_company, name) VALUES(10, true, 2, 'DOCUMENTACIÓN');
INSERT INTO department(id, enabled, id_company, name) VALUES(11, true, 2, 'PRUEBAS');
INSERT INTO department(id, enabled, id_company, name) VALUES(12, true, 2, 'OPERACIONES');

INSERT INTO department(id, enabled, id_company, name) VALUES(13, true, 3, 'DESARROLLO');
INSERT INTO department(id, enabled, id_company, name) VALUES(14, true, 3, 'DISEÑO');
INSERT INTO department(id, enabled, id_company, name) VALUES(15, true, 3, 'ANÁLISIS');
INSERT INTO department(id, enabled, id_company, name) VALUES(16, true, 3, 'DOCUMENTACIÓN');
INSERT INTO department(id, enabled, id_company, name) VALUES(17, true, 3, 'PRUEBAS');
INSERT INTO department(id, enabled, id_company, name) VALUES(18, true, 3, 'OPERACIONES');

INSERT INTO department(id, enabled, id_company, name) VALUES(19, true, 4, 'DESARROLLO');
INSERT INTO department(id, enabled, id_company, name) VALUES(20, true, 4, 'DISEÑO');
INSERT INTO department(id, enabled, id_company, name) VALUES(21, true, 4, 'ANÁLISIS');
INSERT INTO department(id, enabled, id_company, name) VALUES(22, true, 4, 'DOCUMENTACIÓN');
INSERT INTO department(id, enabled, id_company, name) VALUES(23, true, 4, 'PRUEBAS');
INSERT INTO department(id, enabled, id_company, name) VALUES(24, true, 4, 'OPERACIONES');


INSERT INTO department(id, enabled, id_company, name) VALUES(25, true, 5, 'DESARROLLO');
INSERT INTO department(id, enabled, id_company, name) VALUES(26, true, 5, 'DISEÑO');
INSERT INTO department(id, enabled, id_company, name) VALUES(27, true, 5, 'ANÁLISIS');
INSERT INTO department(id, enabled, id_company, name) VALUES(28, true, 5, 'DOCUMENTACIÓN');
INSERT INTO department(id, enabled, id_company, name) VALUES(29, true, 5, 'PRUEBAS');
INSERT INTO department(id, enabled, id_company, name) VALUES(30, true, 5, 'OPERACIONES');


INSERT INTO department(id, enabled, id_company, name) VALUES(31, true, 6, 'DESARROLLO');
INSERT INTO department(id, enabled, id_company, name) VALUES(32, true, 6, 'DISEÑO');
INSERT INTO department(id, enabled, id_company, name) VALUES(33, true, 6, 'ANÁLISIS');
INSERT INTO department(id, enabled, id_company, name) VALUES(34, true, 6, 'DOCUMENTACIÓN');
INSERT INTO department(id, enabled, id_company, name) VALUES(35, true, 6, 'PRUEBAS');
INSERT INTO department(id, enabled, id_company, name) VALUES(36, true, 6, 'OPERACIONES');

INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(1, true, 1, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(2, true, 2, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(3, true, 3, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(4, true, 4, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(5, true, 5, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(6, true, 6, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(7, true, 7, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(8, true, 8, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(9, true, 9, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(10, true, 10, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(11, true, 11, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(12, true, 12, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(13, true, 13, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(14, true, 14, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(15, true, 15, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(16, true, 16, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(17, true, 17, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(18, true, 18, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(19, true, 19, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(20, true, 20, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(21, true, 21, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(22, true, 22, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(23, true, 23, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(24, true, 24, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(25, true, 25, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(26, true, 26, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(27, true, 27, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(28, true, 28, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(29, true, 29, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(30, true, 30, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(31, true, 31, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(32, true, 32, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(33, true, 33, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(34, true, 34, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(35, true, 35, 'Lopez Lopez', 'Cesar J.', 1);
INSERT INTO employee(id, enabled, id_department, last_name, name, address)VALUES(36, true, 36, 'Lopez Lopez', 'Cesar J.', 1);

INSERT INTO address(id, enabled, house_number, street, zip_code) VALUES(1, true, '15B', 'Amapolay', '45677');
--OAuth2 tables 

CREATE TABLE oauth_client_details (
    client_id VARCHAR(256) PRIMARY KEY,
    resource_ids VARCHAR(256),
    client_secret VARCHAR(256),
    scope VARCHAR(256),
    authorized_grant_types VARCHAR(256),
    web_server_redirect_uri VARCHAR(256),
    authorities VARCHAR(256),
    access_token_validity INTEGER,
    refresh_token_validity INTEGER,
    additional_information VARCHAR(4096),
    autoapprove VARCHAR(256)
);
ALTER TABLE oauth_client_details OWNER TO postgres;

CREATE TABLE oauth_client_token (
    token_id VARCHAR(256),
    token bytea,
    authentication_id VARCHAR(256),
    user_name VARCHAR(256),
    client_id VARCHAR(256)
);
ALTER TABLE oauth_client_token OWNER TO postgres;

CREATE TABLE oauth_access_token (
    token_id VARCHAR(256),
    token bytea,
    authentication_id VARCHAR(256),
    user_name VARCHAR(256),
    client_id VARCHAR(256),
    authentication bytea,
    refresh_token VARCHAR(256)
);
ALTER TABLE oauth_access_token OWNER TO postgres;

CREATE TABLE oauth_refresh_token (
    token_id VARCHAR(256),
    token bytea,
    authentication bytea
);
ALTER TABLE oauth_refresh_token OWNER TO postgres;

CREATE TABLE oauth_code (
    code VARCHAR(256), authentication bytea
);
ALTER TABLE oauth_code OWNER TO postgres;