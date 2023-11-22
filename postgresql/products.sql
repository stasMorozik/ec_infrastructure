CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1 down
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS products_images;
-- 1 up
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
-- 2 up
CREATE TABLE products (
  id UUID NOT NULL,
  title varchar(256) NOT NULL,
  description text NOT NULL,
  created date NOT NULL,
  price real NOT NULL,
  amount smallint NOT NULL,
  logo_id UUID NOT NULL,
  CONSTRAINT fk_logo_id FOREIGN KEY(logo_id) REFERENCES images(id)
);
CREATE UNIQUE INDEX products_id ON products (id);
-- 3 up
CREATE TABLE images (
  id UUID NOT NULL,
  filename varchar(512) NOT NULL,
  size integer NOT NULL,
  path text NOT NULL
);
CREATE UNIQUE INDEX images_id ON images (id);
-- 4 up
CREATE TABLE products_images (
  id_product UUID NOT NULL,
  id_image UUID NOT NULL
);
CREATE UNIQUE INDEX products_images_id_image ON products_images (id_image);