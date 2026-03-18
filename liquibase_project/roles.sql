--create roles---
CREATE ROLE read_only_role;
CREATE ROLE app_role;
--grant permission to read_only_role--
GRANT CONNECT ON DATABASE neondb TO read_only_role;
GRANT USAGE ON SCHEMA public TO read_only_role;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO read_only_role;
--grant permissions to app_role
GRANT CONNECT ON DATABASE neondb TO app_role;
GRANT USAGE ON SCHEMA public TO app_role;
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO app_role;
--create users--
CREATE USER Nicole WITH PASSWORD 'P@ssw0rd_123';
CREATE USER Felisa WITH PASSWORD 'P@ssw0rd_123';
--grant rolesto users--
GRANT read_only_role TO Nicole;
GRANT app_role TO Felisa;