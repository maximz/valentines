USE [master]
GO
/****** Object:  Database [valentines]    Script Date: 02/13/2013 03:19:47 ******/
CREATE DATABASE [valentines] ON  PRIMARY 
( NAME = N'valentines', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\valentines.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'valentines_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\valentines_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [valentines] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [valentines].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [valentines] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [valentines] SET ANSI_NULLS OFF
GO
ALTER DATABASE [valentines] SET ANSI_PADDING OFF
GO
ALTER DATABASE [valentines] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [valentines] SET ARITHABORT OFF
GO
ALTER DATABASE [valentines] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [valentines] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [valentines] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [valentines] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [valentines] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [valentines] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [valentines] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [valentines] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [valentines] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [valentines] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [valentines] SET  DISABLE_BROKER
GO
ALTER DATABASE [valentines] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [valentines] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [valentines] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [valentines] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [valentines] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [valentines] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [valentines] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [valentines] SET  READ_WRITE
GO
ALTER DATABASE [valentines] SET RECOVERY FULL
GO
ALTER DATABASE [valentines] SET  MULTI_USER
GO
ALTER DATABASE [valentines] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [valentines] SET DB_CHAINING OFF
GO
USE [valentines]
GO
/****** Object:  User [valentines_user]    Script Date: 02/13/2013 03:19:47 ******/
CREATE USER [valentines_user] FOR LOGIN [valentines_user] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [db_executor]    Script Date: 02/13/2013 03:19:47 ******/
CREATE ROLE [db_executor] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 02/13/2013 03:19:47 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 02/13/2013 03:19:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'valentines', N'valentines', N'd2457597-38d6-43cd-9191-d80788188e0d', NULL)
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 02/13/2013 03:19:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 02/13/2013 03:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 02/13/2013 03:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 02/13/2013 03:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[Questions]    Script Date: 02/13/2013 03:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (1, N'Which car best describes you?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (2, N'What is your favorite breakfast food?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (3, N'What is your favorite type of jeans?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (4, N'What is your favorite type of movie?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (5, N'Who is your favorite senior male?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (6, N'Who is your favorite senior female?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (7, N'What is your favorite social network?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (8, N'Do you love ASBC?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (9, N'What is your favorite pen?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (10, N'What celebrity would you trade lives with for a day?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (11, N'What is your favorite hot beverage?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (12, N'What is your favorite genre of music?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (13, N'Which condiment best describes you?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (14, N'Which throw-back cartoon do you identify with?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (15, N'What is your favorite type of facial hair?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (16, N'Who is your favorite superhero?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (17, N'Favorite Liam Neeson movie?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (18, N'Favorite finger?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (19, N'Favorite first date?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (20, N'What kind of bender would you be?')
INSERT [dbo].[Questions] ([Id], [Text]) VALUES (21, N'Favorite type of headphones?')
/****** Object:  Table [dbo].[OpenIDWhiteList]    Script Date: 02/13/2013 03:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIDWhiteList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OpenID] [nvarchar](450) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_OpenIDWhiteList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_OpenIDWhiteList] ON [dbo].[OpenIDWhiteList] 
(
	[OpenID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OneTimeRegistrationCodes]    Script Date: 02/13/2013 03:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OneTimeRegistrationCodes](
	[Id] [uniqueidentifier] NOT NULL,
	[CustomWelcomeName] [nvarchar](400) NULL,
	[UsesRemaining] [int] NOT NULL,
 CONSTRAINT [PK_OneTimeRegistrationCodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MiniProfilerResults]    Script Date: 02/13/2013 03:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MiniProfilerResults](
	[Id] [uniqueidentifier] NOT NULL,
	[Results] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_MiniProfilerResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BishopsEmails]    Script Date: 02/13/2013 03:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BishopsEmails](
	[Username] [varchar](50) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Grade] [int] NOT NULL,
 CONSTRAINT [PK_BishopsEmails] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'aaronst', N'aaronst@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'abelc', N'abelc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'abramsj', N'abramsj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ackermanc', N'ackermanc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ackermank', N'ackermank@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'acostap', N'acostap@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'aguerrea', N'aguerrea@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'aguerrej', N'aguerrej@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'aguerrek', N'aguerrek@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'Aguerrem', N'Aguerrem@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'aguerret', N'aguerret@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'akikis', N'akikis@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'akinb', N'akinb@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'alexanderd', N'alexanderd@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'allenm', N'allenm@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'alleynec', N'alleynec@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'alleynew', N'alleynew@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'allmana', N'allmana@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'allredj', N'allredj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'amundsong', N'amundsong@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'andersont', N'andersont@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'anglinb', N'anglinb@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ankenyh', N'ankenyh@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ankenyj', N'ankenyj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'appela', N'appela@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'appeln', N'appeln@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'armstrongm', N'armstrongm@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'armstrongm1', N'armstrongm1@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'armstrongn', N'armstrongn@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'arnells', N'arnells@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'athillj', N'athillj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'athilln', N'athilln@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ayalaa', N'ayalaa@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bachac', N'bachac@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bantai', N'bantai@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'baoh', N'baoh@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'barlows', N'barlows@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'barlows1', N'barlows1@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'barnese', N'barnese@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'beachamm', N'beachamm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'beladir', N'beladir@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'benhama', N'benhama@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'benjamint', N'benjamint@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'berticsa', N'berticsa@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bilmesa', N'bilmesa@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'blakes', N'blakes@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'blooma', N'blooma@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'boehringera', N'boehringera@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'boehringert', N'boehringert@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bolandj', N'bolandj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'boldtc', N'boldtc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'boldtv', N'boldtv@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bollerts', N'bollerts@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bonnerh', N'bonnerh@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bonnerm', N'bonnerm@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'boothc', N'boothc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bourneh', N'bourneh@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bournes', N'bournes@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'boutellek', N'boutellek@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bradburyn', N'bradburyn@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'brahmea', N'brahmea@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'breuern', N'breuern@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'brewerb', N'brewerb@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'brewero', N'brewero@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'britanicoa', N'britanicoa@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'brownc', N'brownc@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'brutteng', N'brutteng@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'buehnerz', N'buehnerz@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'burboac', N'burboac@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'burkhartd', N'burkhartd@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'burkhartg', N'burkhartg@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'burnettm', N'burnettm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'burnetts', N'burnetts@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'bushmanj', N'bushmanj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'buznitskyj', N'buznitskyj@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'cabrera-minoa', N'cabrera-minoa@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'canalek', N'canalek@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'caplesi', N'caplesi@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'caplesw', N'caplesw@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'cappettam', N'cappettam@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'carlsond1', N'carlsond1@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'carlsonsc', N'carlsonsc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'carrilloh', N'carrilloh@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'carriona', N'carriona@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'cartera1', N'cartera1@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'casee', N'casee@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'casej', N'casej@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'cashg', N'cashg@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'casillasm', N'casillasm@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'casillasv', N'casillasv@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'castroa', N'castroa@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'castrok', N'castrok@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'catrional', N'catrional@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'championg', N'championg@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'changa', N'changa@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'changc', N'changc@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'changn', N'changn@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'changs', N'changs@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chasanj', N'chasanj@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chases', N'chases@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'cheneya', N'cheneya@bishopsstudent.org', 12)
GO
print 'Processed 100 total records'
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chenf', N'chenf@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chenga', N'chenga@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chenj', N'chenj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chenm', N'chenm@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chens1', N'chens1@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chesneyt', N'chesneyt@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chisholmk', N'chisholmk@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'choc', N'choc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'choe', N'choe@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chuna', N'chuna@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'chunn', N'chunn@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'churchm', N'churchm@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ciardellac', N'ciardellac@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'clowneym1', N'clowneym1@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'cohenz', N'cohenz@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'cohnd1', N'cohnd1@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'colarussob', N'colarussob@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'collinsb', N'collinsb@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'collinsonm', N'collinsonm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'copelandm', N'copelandm@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'costac', N'costac@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'couttolencm', N'couttolencm@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'cramers', N'cramers@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'crawfordc', N'crawfordc@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'crawfordk1', N'crawfordk1@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'curryr', N'curryr@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'curtina', N'curtina@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'curtiss', N'curtiss@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'czechc', N'czechc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dalyr1', N'dalyr1@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'davisr', N'davisr@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'daviss', N'daviss@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'deckerg', N'deckerg@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'delaneyc', N'delaneyc@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'delanok', N'delanok@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'delfinoa', N'delfinoa@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dempseyj', N'dempseyj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'devoem', N'devoem@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dewaartd', N'dewaartd@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'diazm', N'diazm@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dicksj', N'dicksj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'doddsm', N'doddsm@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dorinsone', N'dorinsone@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dorvillierb', N'dorvillierb@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dorvillierm', N'dorvillierm@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'douglasc', N'douglasc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'douglase', N'douglase@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'downingz', N'downingz@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'draughornek', N'draughornek@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'drostc', N'drostc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'drummondw', N'drummondw@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dsouzad', N'dsouzad@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dubinr', N'dubinr@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ducazaua', N'ducazaua@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'duceys', N'duceys@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ducketta', N'ducketta@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dumkea', N'dumkea@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'dyerw', N'dyerw@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'edgarw', N'edgarw@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'edwardsb', N'edwardsb@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'edwardsca', N'edwardsca@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'edwardsh', N'edwardsh@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'eldredgea', N'eldredgea@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'eldredgem', N'eldredgem@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'elige', N'elige@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ellisa', N'ellisa@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ellisa1', N'ellisa1@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'elmsm', N'elmsm@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'Elsheikht', N'Elsheikht@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'enghb', N'enghb@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'enghm', N'enghm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'erdossyk', N'erdossyk@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'erlbeckl', N'erlbeckl@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'erlbecko', N'erlbecko@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'escobedoa', N'escobedoa@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'falkp', N'falkp@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'farahj', N'farahj@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'farahm', N'farahm@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'feinerg', N'feinerg@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'feingoldl', N'feingoldl@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'fischert1', N'fischert1@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'fishburnv', N'fishburnv@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'fishburnw', N'fishburnw@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'flagga', N'flagga@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'flaggh', N'flaggh@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'fluhartyc', N'fluhartyc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'fondv', N'fondv@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'fordc', N'fordc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'forssmand', N'forssmand@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'fortek', N'fortek@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'fortep', N'fortep@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'frankc', N'frankc@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'freemani', N'freemani@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'frenchr', N'frenchr@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'Gaarder-Feingoldn', N'Gaarder-Feingoldn@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gallahueb', N'gallahueb@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gallegosa', N'gallegosa@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gallegosa1', N'gallegosa1@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gaoe', N'gaoe@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'garciav', N'garciav@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'garonc', N'garonc@bishopsstudent.org', 11)
GO
print 'Processed 200 total records'
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'geierj', N'geierj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gellb', N'gellb@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'geogheganb', N'geogheganb@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'geoghegann', N'geoghegann@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gerritys', N'gerritys@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ghanbarie', N'ghanbarie@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gibbonsl', N'gibbonsl@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gibbonsn', N'gibbonsn@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gilliganj', N'gilliganj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gleesonm', N'gleesonm@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'goldn', N'goldn@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'Gonzalezd', N'Gonzalezd@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gonzalezn', N'gonzalezn@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'graftb', N'graftb@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'granireru', N'granireru@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'graysonn', N'graysonn@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'graysonn1', N'graysonn1@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'greenbergd', N'greenbergd@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'greenhausj', N'greenhausj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'greens', N'greens@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'greisenr', N'greisenr@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'griffithk', N'griffithk@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'griggsp', N'griggsp@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'groenigerr', N'groenigerr@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'guinchardc', N'guinchardc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'gulinoa1', N'gulinoa1@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'haftc', N'haftc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'haftm', N'haftm@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hagestadr', N'hagestadr@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hailer', N'hailer@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hallb', N'hallb@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hallk', N'hallk@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'halterc', N'halterc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hamdyn', N'hamdyn@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hamonj', N'hamonj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hamonk', N'hamonk@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'harringtonm', N'harringtonm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'harrism', N'harrism@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hartmang', N'hartmang@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hartts', N'hartts@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'harveyg', N'harveyg@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hasleyc', N'hasleyc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hastingsr', N'hastingsr@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'havermalea', N'havermalea@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hayesc', N'hayesc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'healeym', N'healeym@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hegenera', N'hegenera@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'heldb', N'heldb@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'heldg', N'heldg@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'henserskyj', N'henserskyj@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'herveyd', N'herveyd@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hewittc', N'hewittc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'heydarim', N'heydarim@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hicksr', N'hicksr@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'higginsont', N'higginsont@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'higgsb', N'higgsb@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hillerc', N'hillerc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hinkleyl', N'hinkleyl@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hinkleym', N'hinkleym@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hinshaws', N'hinshaws@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hoffmana', N'hoffmana@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hollandc', N'hollandc@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hollows', N'hollows@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'holmanr', N'holmanr@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'holmesm', N'holmesm@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'holms', N'holms@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hooke', N'hooke@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hootonc1', N'hootonc1@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'howardja', N'howardja@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'huangt', N'huangt@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hughesb', N'hughesb@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'husej', N'husej@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'huynha', N'huynha@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'hwanga', N'hwanga@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'isaacsonc', N'isaacsonc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'jamesh', N'jamesh@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'jamilk', N'jamilk@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'jeona', N'jeona@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'jeont', N'jeont@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'johnsona', N'johnsona@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'johnsone', N'johnsone@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'johnsonl1', N'johnsonl1@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'johnstone', N'johnstone@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'jonesk', N'jonesk@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'jonesr', N'jonesr@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'joshis', N'joshis@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kafkam', N'kafkam@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kaiserb', N'kaiserb@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kalenchj', N'kalenchj@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kazemainir', N'kazemainir@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kazerounil', N'kazerounil@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kearneyb', N'kearneyb@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kelberm', N'kelberm@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kellehert', N'kellehert@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kerrm', N'kerrm@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'killianm', N'killianm@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kilmana', N'kilmana@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kima1', N'kima1@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kimb', N'kimb@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kimd1', N'kimd1@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kimmelj', N'kimmelj@bishopsstudent.org', 10)
GO
print 'Processed 300 total records'
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kimmelk', N'kimmelk@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kingt', N'kingt@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'klausc', N'klausc@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'klicperae', N'klicperae@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'klineks', N'klineks@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'knowlesk', N'knowlesk@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'knutsonc', N'knutsonc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'koczonm', N'koczonm@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kosisk', N'kosisk@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'krstica', N'krstica@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kruegera', N'kruegera@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'kyrillosc1', N'kyrillosc1@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'laffertyo', N'laffertyo@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lagrangez', N'lagrangez@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lama', N'lama@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lamac', N'lamac@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lanaa', N'lanaa@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lanee', N'lanee@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'langej', N'langej@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lanutil', N'lanutil@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lassl', N'lassl@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lauerc', N'lauerc@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'leachp', N'leachp@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'leej', N'leej@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'leer', N'leer@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lees', N'lees@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'leoj', N'leoj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'leschinc', N'leschinc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'leungi', N'leungi@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'leungn', N'leungn@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lia', N'lia@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lia2', N'lia2@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'liangj', N'liangj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'liaon', N'liaon@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lic', N'lic@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'liebovitze', N'liebovitze@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lile', N'lile@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lincolna', N'lincolna@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lind', N'lind@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lindsayo', N'lindsayo@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lipskia', N'lipskia@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'littlefieldg', N'littlefieldg@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'littletoni', N'littletoni@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'liud', N'liud@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lizanichm', N'lizanichm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lukaz', N'lukaz@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lunsfordj', N'lunsfordj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'lunsfordn', N'lunsfordn@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'magallonl', N'magallonl@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mahavierk', N'mahavierk@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mahlere', N'mahlere@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'malkiewiczd', N'malkiewiczd@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'manhardc', N'manhardc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'marrent', N'marrent@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'martinezg', N'martinezg@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'martinezj', N'martinezj@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'martinezs', N'martinezs@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'martins', N'martins@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'martint', N'martint@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mateok', N'mateok@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mateoz', N'mateoz@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mattenm', N'mattenm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'maycockh', N'maycockh@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'maysentj', N'maysentj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mccannj', N'mccannj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mccroskeyc', N'mccroskeyc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mccroskeys', N'mccroskeys@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mcneilm', N'mcneilm@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mcphersons', N'mcphersons@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mendozak', N'mendozak@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'menendezv', N'menendezv@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'meyern', N'meyern@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'meyerr', N'meyerr@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'michaelc', N'michaelc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'michalkor', N'michalkor@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'millerc', N'millerc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'millerl', N'millerl@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mischela', N'mischela@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mojdehil', N'mojdehil@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'monroym', N'monroym@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mooradc', N'mooradc@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mooradj', N'mooradj@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'moradia', N'moradia@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'moralesm', N'moralesm@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'morenos', N'morenos@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'moussaviann', N'moussaviann@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'mullenj1', N'mullenj1@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'naglem', N'naglem@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'nahmw', N'nahmw@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'negulescup', N'negulescup@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'nelsonj1', N'nelsonj1@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'nelsont', N'nelsont@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'nevillec', N'nevillec@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'nguyene', N'nguyene@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'nguyenm', N'nguyenm@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'nolanc', N'nolanc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'noons', N'noons@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'nordlandp', N'nordlandp@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ocampor', N'ocampor@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ochoa-cotad', N'ochoa-cotad@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ohh', N'ohh@bishopsstudent.org', 11)
GO
print 'Processed 400 total records'
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'oliveri', N'oliveri@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'olsone', N'olsone@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'orrc', N'orrc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'orrk', N'orrk@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ortizw1', N'ortizw1@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'palankin', N'palankin@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'parkr', N'parkr@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'penga', N'penga@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'petroskir', N'petroskir@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'pettitm1', N'pettitm1@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'pfaffa', N'pfaffa@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'phama', N'phama@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'phillipsv', N'phillipsv@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'piegzaj', N'piegzaj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'pilarskis', N'pilarskis@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'pintars', N'pintars@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'pittals', N'pittals@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'plantd', N'plantd@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'prednisa', N'prednisa@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'provostz', N'provostz@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'pulidoc', N'pulidoc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'quinna', N'quinna@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'quj', N'quj@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ramirez-cardenasj', N'ramirez-cardenasj@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ramirezj', N'ramirezj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'raserc', N'raserc@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'rathees', N'rathees@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'reedm', N'reedm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'reyesr', N'reyesr@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'reynoldsa', N'reynoldsa@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ricchiutim', N'ricchiutim@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'riosg', N'riosg@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'riveraa', N'riveraa@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'robertsc', N'robertsc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'roeperd', N'roeperd@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'roessera', N'roessera@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'rohnd', N'rohnd@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'rohrbachs', N'rohrbachs@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'rosenm', N'rosenm@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'rosenthalj', N'rosenthalj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'rossine', N'rossine@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'ruggieroj', N'ruggieroj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'rutherfordt', N'rutherfordt@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sadowskyj', N'sadowskyj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sadowskyn', N'sadowskyn@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sailerh', N'sailerh@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sammonm', N'sammonm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sammonm1', N'sammonm1@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'samuelsj', N'samuelsj@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sanghik', N'sanghik@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'saundersong', N'saundersong@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'saundersons', N'saundersons@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sawayaa', N'sawayaa@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sawayad', N'sawayad@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'schneiderp', N'schneiderp@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'schreiberr', N'schreiberr@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'schrunkb', N'schrunkb@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'schrunke', N'schrunke@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'schultzc', N'schultzc@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'seamang', N'seamang@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'searsco', N'searsco@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'seauj', N'seauj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sebrechtc', N'sebrechtc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'secondinea', N'secondinea@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'settep', N'settep@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'shafferk', N'shafferk@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'shahbazn', N'shahbazn@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'shankarj', N'shankarj@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sheths', N'sheths@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'shil', N'shil@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'shina', N'shina@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'shinj', N'shinj@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'shuffettm', N'shuffettm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'shustera', N'shustera@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'smith-eppsteinera', N'smith-eppsteinera@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'smithg', N'smithg@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'soaresn', N'soaresn@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'solomonn', N'solomonn@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'solomont', N'solomont@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sotornika', N'sotornika@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'spenglerk', N'spenglerk@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'stauntonh', N'stauntonh@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'stepanofc', N'stepanofc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'stotelmyres', N'stotelmyres@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'strauss', N'strauss@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'strublen', N'strublen@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'stuttsm', N'stuttsm@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'styllij', N'styllij@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'stynerl', N'stynerl@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'styrtj', N'styrtj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'suc', N'suc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sullivank', N'sullivank@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'Sulpizioj', N'Sulpizioj@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'swansona', N'swansona@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'swansonk', N'swansonk@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'sweeneyj', N'sweeneyj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'tainere', N'tainere@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'tayebia', N'tayebia@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'thielem', N'thielem@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'thomasc1', N'thomasc1@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'thomsonn', N'thomsonn@bishopsstudent.org', 12)
GO
print 'Processed 500 total records'
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'thomsons', N'thomsons@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'tiena', N'tiena@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'tierneyi', N'tierneyi@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'tiffts', N'tiffts@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'tippa', N'tippa@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'tranv', N'tranv@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'traylors', N'traylors@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'trejos', N'trejos@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'tridentic', N'tridentic@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'trouwj', N'trouwj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'Tunnellb', N'Tunnellb@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'twymanw', N'twymanw@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'varelak', N'varelak@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'varelar', N'varelar@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'vasqueze', N'vasqueze@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'vassalls', N'vassalls@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'vickersa', N'vickersa@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'vogelk', N'vogelk@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'vogelt', N'vogelt@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'vossc', N'vossc@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wagnero', N'wagnero@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'walther-meadeg', N'walther-meadeg@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'waltherv', N'waltherv@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'waltzt', N'waltzt@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wanga1', N'wanga1@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wange', N'wange@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wange1', N'wange1@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wangj3', N'wangj3@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wangk', N'wangk@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wangl', N'wangl@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'watkinsj', N'watkinsj@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'watsoni', N'watsoni@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'webbs', N'webbs@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'websterj', N'websterj@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'websters', N'websters@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wehrl', N'wehrl@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'weilandw', N'weilandw@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wellerk', N'wellerk@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'whitwortha', N'whitwortha@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'whitworthr1', N'whitworthr1@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wiesec', N'wiesec@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'winklerc', N'winklerc@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'woodl', N'woodl@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'wrobela1', N'wrobela1@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'xiag', N'xiag@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'xiongv', N'xiongv@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'yamaguchir', N'yamaguchir@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'yangs', N'yangs@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'yaom', N'yaom@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'yink', N'yink@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'yockeys', N'yockeys@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'youngg', N'youngg@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'yue', N'yue@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'zareia', N'zareia@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'zaslavskym', N'zaslavskym@bishopsstudent.org', 11)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'zeiglerl', N'zeiglerl@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'zhangh', N'zhangh@bishopsstudent.org', 9)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'zhaoe', N'zhaoe@bishopsstudent.org', 12)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'zhuj', N'zhuj@bishopsstudent.org', 10)
INSERT [dbo].[BishopsEmails] ([Username], [Email], [Grade]) VALUES (N'zuckerm', N'zuckerm@bishopsstudent.org', 12)
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 02/13/2013 03:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[AnswerOrder] [int] NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Answers] ON [dbo].[Answers] 
(
	[QuestionId] ASC,
	[AnswerOrder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answers] ON
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (2, 1, N'Convertible', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (3, 1, N'SUV', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (4, 1, N'Truck', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (5, 1, N'Smart Car', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (6, 2, N'Pancakes', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (7, 2, N'Cereal', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (8, 2, N'Eggs', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (9, 2, N'Oatmeal', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (10, 3, N'Boot Cut', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (11, 3, N'Capris', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (12, 3, N'Flare', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (13, 3, N'Skinny', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (14, 4, N'Horror', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (15, 4, N'Comedy', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (16, 4, N'Drama', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (17, 4, N'Animated', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (18, 5, N'Viktor Wrobel', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (19, 5, N'Harrison Flagg', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (20, 5, N'Luke Erlbeck', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (21, 5, N'Jamere Jones', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (22, 6, N'Natasha Thomson', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (23, 6, N'Alexa Brahme', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (24, 6, N'Mallie Koczon', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (25, 6, N'Marina Aguerre', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (26, 7, N'Instagram', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (27, 7, N'Facebook', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (28, 7, N'Google Plus', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (29, 7, N'Myspace', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (30, 8, N'yes', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (31, 8, N'Yes', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (32, 8, N'YES!', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (33, 8, N'MY PASSION FOR THEM BURNS WITH THE HEAT OF 100,000 SUNS', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (34, 9, N'Ballpoint', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (35, 9, N'Fountain', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (36, 9, N'Quill', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (37, 9, N'Gel', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (42, 10, N'Scarlet Johansson', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (43, 10, N'Ryan Gosling', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (44, 10, N'Emma Watson', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (45, 10, N'Channing Tatum', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (46, 11, N'Tea', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (47, 11, N'Hot Chocolate', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (48, 11, N'Coffee', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (49, 11, N'Apple Cider', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (50, 12, N'Pop', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (51, 12, N'Country', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (52, 12, N'Rap', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (53, 12, N'Rock/Indie', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (54, 13, N'Ketchup', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (55, 13, N'Mustard', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (56, 13, N'Relish', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (57, 13, N'Mayonnaise', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (58, 14, N'Rugrats', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (59, 14, N'Rocket Power', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (60, 14, N'Hey Arnold!', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (61, 14, N'Catdog', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (62, 15, N'Unibrow', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (63, 15, N'Soul Patch', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (64, 15, N'Chin Strap', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (65, 15, N'Lamb Chops', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (66, 16, N'Aquaman', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (67, 16, N'Captain Underpants', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (68, 16, N'The Crimson Chin', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (69, 16, N'Captain Planet', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (70, 17, N'Taken', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (71, 17, N'Star Wars Phantom Menace', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (72, 17, N'The Grey', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (73, 17, N'The Chronicles of Narnia', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (74, 18, N'Thumb', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (75, 18, N'Ring', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (76, 18, N'Pinky', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (77, 18, N'Index', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (78, 19, N'Hot Yoga', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (80, 19, N'Dentist Appointment', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (81, 19, N'Junior Retreat', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (82, 20, N'Earth', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (83, 20, N'Water', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (84, 20, N'Fire', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (85, 20, N'Air', 4)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (86, 21, N'Beats', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (87, 21, N'Skullcandy', 2)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (88, 21, N'Bose', 3)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [AnswerOrder]) VALUES (89, 21, N'Apple', 4)
SET IDENTITY_INSERT [dbo].[Answers] OFF
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'd2457597-38d6-43cd-9191-d80788188e0d', N'002ee598-5b14-40f6-9418-f406d59bf8fc', N'Administrator', N'administrator', NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matches]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matches](
	[RequestUser] [uniqueidentifier] NOT NULL,
	[MatchedUser] [uniqueidentifier] NOT NULL,
	[CompatibilityIndex] [float] NOT NULL,
	[DateCalculated] [datetime] NOT NULL,
	[AreSameGrade] [bit] NOT NULL,
	[MatchedSex] [bit] NOT NULL,
	[MatchId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Matches_1] PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Matches_AllSchool] ON [dbo].[Matches] 
(
	[RequestUser] ASC,
	[CompatibilityIndex] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Matches_Nemesis] ON [dbo].[Matches] 
(
	[RequestUser] ASC,
	[CompatibilityIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Matches_SameGrade] ON [dbo].[Matches] 
(
	[RequestUser] ASC,
	[CompatibilityIndex] DESC,
	[AreSameGrade] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UniqueMatch] ON [dbo].[Matches] 
(
	[RequestUser] ASC,
	[MatchedUser] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  Table [dbo].[UserOpenIds]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOpenIds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OpenIdClaim] [nvarchar](450) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__UserOpen__3214EC072057CCD0] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserOpenIds] ON [dbo].[UserOpenIds] 
(
	[OpenIdClaim] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserOpenIds_1] ON [dbo].[UserOpenIds] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responses]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responses](
	[ResponseId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[AnswerId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Responses] PRIMARY KEY CLUSTERED 
(
	[ResponseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Responses] ON [dbo].[Responses] 
(
	[UserId] ASC,
	[QuestionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Responses_1] ON [dbo].[Responses] 
(
	[QuestionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 02/13/2013 03:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__08EA5793]    Script Date: 02/13/2013 03:19:51 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0EA330E9]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__0F975522]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__108B795B]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__5BE2A6F2]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__44FF419A]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__6754599E]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__239E4DCF]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0DAF0CB0]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK_Answers_Questions]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Id])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__5AEE82B9]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__440B1D61]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__68487DD7]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__693CA210]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__38996AB5]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__21B6055D]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__22AA2996]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__628FA481]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__4AB81AF0]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__49C3F6B7]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK_MatchedUserAcc]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_MatchedUserAcc] FOREIGN KEY([MatchedUser])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_MatchedUserAcc]
GO
/****** Object:  ForeignKey [FK_RequestUserAcc]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[Matches]  WITH CHECK ADD  CONSTRAINT [FK_RequestUserAcc] FOREIGN KEY([RequestUser])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Matches] CHECK CONSTRAINT [FK_RequestUserAcc]
GO
/****** Object:  ForeignKey [FK_UserOpenIds_aspnet_Users]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[UserOpenIds]  WITH CHECK ADD  CONSTRAINT [FK_UserOpenIds_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[UserOpenIds] CHECK CONSTRAINT [FK_UserOpenIds_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_Responses_Answers]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[Responses]  WITH CHECK ADD  CONSTRAINT [FK_Responses_Answers] FOREIGN KEY([AnswerId])
REFERENCES [dbo].[Answers] ([Id])
GO
ALTER TABLE [dbo].[Responses] CHECK CONSTRAINT [FK_Responses_Answers]
GO
/****** Object:  ForeignKey [FK_Responses_aspnet_Users]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[Responses]  WITH CHECK ADD  CONSTRAINT [FK_Responses_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Responses] CHECK CONSTRAINT [FK_Responses_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_Responses_Questions]    Script Date: 02/13/2013 03:20:03 ******/
ALTER TABLE [dbo].[Responses]  WITH CHECK ADD  CONSTRAINT [FK_Responses_Questions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Id])
GO
ALTER TABLE [dbo].[Responses] CHECK CONSTRAINT [FK_Responses_Questions]
GO
