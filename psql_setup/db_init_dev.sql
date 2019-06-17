-- Reset DB
DROP DATABASE IF EXISTS atlas_of_thrones;
CREATE DATABASE atlas_of_thrones;

CREATE USER patrick;
GRANT ALL PRIVILEGES ON DATABASE atlas_of_thrones to patrick;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO patrick;

-- Connect to DB
\c atlas_of_thrones

-- Enable postgis
CREATE EXTENSION postgis;
