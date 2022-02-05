 CREATE USER first_default_user WITH PASSWORD '123';
 GRANT ALL ON DATABASE "Lab1DBase" TO first_default_user;
 CREATE USER second_user WITH PASSWORD '007';
 GRANT connect ON DATABASE "Lab1DBase" TO second_user;
 