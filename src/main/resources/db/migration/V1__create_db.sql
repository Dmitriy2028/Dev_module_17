CREATE TABLE note(
    id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL,
    content VARCHAR NOT NULL
);

ALTER SEQUENCE note_id_seq RESTART WITH 1;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    enabled BOOLEAN NOT NULL,
    role VARCHAR(45) NOT NULL
);

ALTER SEQUENCE users_id_seq RESTART WITH 1;

INSERT INTO users (username, password, enabled, role) VALUES ('user', '$2a$12$0Z6cdKnOHSpZ3GClTtvlMuvLuI4u1sCRa9caV8NfFTwHNaLcLuzkW', true, 'USER');