USE master;
GO

-- Create login for user 'ashutosh'
CREATE LOGIN ashutosh WITH PASSWORD = 'ashutosh#12345', CHECK_POLICY = OFF;
GO

-- Create database
CREATE DATABASE ClientDB;
GO

USE ClientDB;
GO

-- Create user for 'ashutosh' in ClientDB
CREATE USER ashutosh FOR LOGIN ashutosh;
GO

ALTER ROLE db_owner ADD MEMBER ashutosh;
GO

-- Create tables
CREATE TABLE Person (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Age INT
);
GO

CREATE TABLE Others1 (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Description NVARCHAR(255)
);
GO

CREATE TABLE Others2 (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Details NVARCHAR(255)
);
GO
