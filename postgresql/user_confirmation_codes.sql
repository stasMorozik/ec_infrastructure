CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1 down
DROP TABLE IF EXISTS confirmation_codes;
-- 1 up
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE confirmation_codes (
  id UUID NOT NULL,
  email varchar(32) NOT NULL,
  code smallint NOT NULL,
  created integer NOT NULL,
  confirmed boolean NOT NULL
);
CREATE UNIQUE INDEX confirmation_codes_id ON confirmation_codes (id);
CREATE UNIQUE INDEX confirmation_codes_email ON confirmation_codes (email);