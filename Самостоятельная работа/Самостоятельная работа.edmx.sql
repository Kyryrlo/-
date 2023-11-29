
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/29/2023 14:26:39
-- Generated from EDMX file: C:\Users\opilane\source\repos\chernykh kyrylo\Самостоятельная работа\Самостоятельная работа\Самостоятельная работа.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Самостоятельная работа];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ArvutitellimusedSet'
CREATE TABLE [dbo].[ArvutitellimusedSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Worker] nvarchar(max)  NOT NULL,
    [Kirjeldus] nvarchar(max)  NOT NULL,
    [Korpus] nvarchar(max)  NOT NULL,
    [Kuvar] nvarchar(max)  NOT NULL,
    [Pakitud] nvarchar(max)  NOT NULL,
    [Workers_Id] int  NOT NULL
);
GO

-- Creating table 'WorkersSet'
CREATE TABLE [dbo].[WorkersSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Chernykh_Kyrylo] nvarchar(max)  NOT NULL,
    [Oliksii_Rudenkox] nvarchar(max)  NOT NULL,
    [Alexandr_Kondr] nvarchar(max)  NOT NULL,
    [Savchenko_Motvii] nvarchar(max)  NOT NULL,
    [Egor_Nedozim] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ArvutitellimusedSet'
ALTER TABLE [dbo].[ArvutitellimusedSet]
ADD CONSTRAINT [PK_ArvutitellimusedSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WorkersSet'
ALTER TABLE [dbo].[WorkersSet]
ADD CONSTRAINT [PK_WorkersSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Workers_Id] in table 'ArvutitellimusedSet'
ALTER TABLE [dbo].[ArvutitellimusedSet]
ADD CONSTRAINT [FK_WorkersArvutitellimused]
    FOREIGN KEY ([Workers_Id])
    REFERENCES [dbo].[WorkersSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WorkersArvutitellimused'
CREATE INDEX [IX_FK_WorkersArvutitellimused]
ON [dbo].[ArvutitellimusedSet]
    ([Workers_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------