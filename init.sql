
IF DB_ID(N'TeamProject1') IS NULL
    CREATE DATABASE TeamProject1;
GO

USE TeamProject1;
GO

IF OBJECT_ID(N'dbo.authTable', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.authTable (
        studentId NVARCHAR(50) PRIMARY KEY,
        loginTime NVARCHAR(30)
    );
END;
GO

IF OBJECT_ID(N'dbo.normalForm', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.normalForm (
        [date] NVARCHAR(50) NULL,
        topic NVARCHAR(255),
        studentInfo NVARCHAR(MAX),
        address NVARCHAR(MAX),
        advisor NVARCHAR(255),
        caseData NVARCHAR(MAX)
    );
END;
GO

IF OBJECT_ID(N'dbo.addDropForm', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.addDropForm (
        id NVARCHAR(50),
        [date] NVARCHAR(50),
        studentFirstName NVARCHAR(100),
        studentLastName NVARCHAR(100),
        studentId NVARCHAR(50),
        studentYear NVARCHAR(20),
        studyField NVARCHAR(200),
        advisor NVARCHAR(200),
        addressNumber NVARCHAR(100),
        moo NVARCHAR(50),
        tumbol NVARCHAR(100),
        amphur NVARCHAR(100),
        province NVARCHAR(100),
        postalCode NVARCHAR(20),
        mobilePhone NVARCHAR(20),
        phone NVARCHAR(20),
        cause NVARCHAR(MAX),
        addSubjectList NVARCHAR(MAX),
        dropSubjectList NVARCHAR(MAX)
    );
END;
GO
