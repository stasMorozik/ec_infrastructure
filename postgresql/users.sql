CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1 down
DROP TABLE IF EXISTS users;
-- 1 up
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE users (
  id UUID NOT NULL,
  phone varchar(16) NOT NULL,
  email varchar(32) NOT NULL,
  name varchar(32) NOT NULL,
  surname varchar(32) NOT NULL,
  created date NOT NULL,
  updated date NOT NULL,
  role varchar(16) NOT NULL
);
CREATE UNIQUE INDEX users_id ON users (id);
CREATE UNIQUE INDEX users_phone ON users (phone);
CREATE UNIQUE INDEX users_email ON users (email);

-- INSERT INTO users (
--   id, 
--   phone, 
--   email, 
--   name, 
--   surname,
--   created,
--   updated
-- ) VALUES (
--   uuid_generate_v4(),
--   '+77058302677'
--   'stasmoriniv@gmail.com',
--   'Admin',
--   'Root', 
--   now(), 
--   now(),
--   'Administrator'
-- );