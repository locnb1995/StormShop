IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'resources')
BEGIN
    CREATE DATABASE resources
END