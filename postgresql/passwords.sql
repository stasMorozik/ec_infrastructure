CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1 down
DROP TABLE IF EXISTS passwords;
-- 1 up
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE passwords (
  id UUID NOT NULL,
  password varchar(256) NOT NULL,
  email varchar(32) NOT NULL,
  created date NOT NULL,
  updated date NOT NULL
);
CREATE UNIQUE INDEX passwords_id ON passwords (id);
CREATE UNIQUE INDEX passwords_email ON passwords (email);

-- INSERT INTO passwords (
--   id, 
--   password, 
--   email, 
--   created, 
--   updated
-- ) VALUES (
--   uuid_generate_v4(),
--   '30135c456138fd17bb49b6b7273901c7abc4c185da2099b26d0e200cbe693264'
--   'stasmoriniv@gmail.com', 
--   now(), 
--   now()
-- );