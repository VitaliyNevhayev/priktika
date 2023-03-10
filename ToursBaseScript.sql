USE [master]
GO
/****** Object:  Database [TourBase]    Script Date: 13.01.2023 9:49:29 ******/
CREATE DATABASE [TourBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TourBase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\TourBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TourBase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\TourBase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TourBase] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TourBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TourBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TourBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TourBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TourBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TourBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [TourBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TourBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TourBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TourBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TourBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TourBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TourBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TourBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TourBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TourBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TourBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TourBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TourBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TourBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TourBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TourBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TourBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TourBase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TourBase] SET  MULTI_USER 
GO
ALTER DATABASE [TourBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TourBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TourBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TourBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TourBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TourBase] SET QUERY_STORE = OFF
GO
USE [TourBase]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [TourBase]
GO
/****** Object:  User [WSR-02\пользователь WSR2018]    Script Date: 13.01.2023 9:49:29 ******/
CREATE USER [WSR-02\пользователь WSR2018] FOR LOGIN [WSR-02\пользователь WSR2018] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [WSR-02\Olimp]    Script Date: 13.01.2023 9:49:29 ******/
CREATE USER [WSR-02\Olimp] FOR LOGIN [WSR-02\Olimp] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KPC\инет]    Script Date: 13.01.2023 9:49:29 ******/
CREATE USER [KPC\инет] FOR LOGIN [KPC\инет] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KPC\администратор]    Script Date: 13.01.2023 9:49:29 ******/
CREATE USER [KPC\администратор] FOR LOGIN [KPC\администратор] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KPC\3-1p9]    Script Date: 13.01.2023 9:49:29 ******/
CREATE USER [KPC\3-1p9] FOR LOGIN [KPC\3-1p9] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_datareader] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [KPC\инет]
GO
ALTER ROLE [db_owner] ADD MEMBER [KPC\администратор]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [KPC\администратор]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [KPC\администратор]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [KPC\администратор]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [KPC\администратор]
GO
ALTER ROLE [db_datareader] ADD MEMBER [KPC\администратор]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [KPC\администратор]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [KPC\администратор]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [KPC\администратор]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 13.01.2023 9:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Code] [nchar](2) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 13.01.2023 9:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CountOfStars] [int] NOT NULL,
	[CountCode] [nchar](2) NOT NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelComment]    Script Date: 13.01.2023 9:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelComment](
	[id] [int] NOT NULL,
	[Hotelid] [int] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](100) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_HotelComment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotelmage]    Script Date: 13.01.2023 9:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotelmage](
	[id] [int] NOT NULL,
	[Hotelid] [int] NOT NULL,
	[ImageSource] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Hotelmage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelOfTour]    Script Date: 13.01.2023 9:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelOfTour](
	[HotelId] [int] NOT NULL,
	[TourId] [int] NOT NULL,
 CONSTRAINT [PK_HotelOfTour] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC,
	[TourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourBase]    Script Date: 13.01.2023 9:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourBase](
	[id] [int] NOT NULL,
	[TicketCount] [int] NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePreview] [varbinary](max) NULL,
	[Price] [money] NOT NULL,
	[IsActual] [bit] NOT NULL,
 CONSTRAINT [PK_TourBase] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 13.01.2023 9:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Discription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfTour]    Script Date: 13.01.2023 9:49:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfTour](
	[Tourid] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_TypeOfTour] PRIMARY KEY CLUSTERED 
(
	[Tourid] ASC,
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Type] ([Id], [Name], [Discription]) VALUES (1, N'Тип 1', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Discription]) VALUES (2, N'Тип 2', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Discription]) VALUES (3, N'Тип 3', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Discription]) VALUES (4, N'Тип 4', NULL)
INSERT [dbo].[Type] ([Id], [Name], [Discription]) VALUES (5, N'Тип 5', NULL)
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Country] FOREIGN KEY([CountCode])
REFERENCES [dbo].[Country] ([Code])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Country]
GO
ALTER TABLE [dbo].[HotelComment]  WITH CHECK ADD  CONSTRAINT [FK_HotelComment_Hotel] FOREIGN KEY([Hotelid])
REFERENCES [dbo].[Hotel] ([id])
GO
ALTER TABLE [dbo].[HotelComment] CHECK CONSTRAINT [FK_HotelComment_Hotel]
GO
ALTER TABLE [dbo].[Hotelmage]  WITH CHECK ADD  CONSTRAINT [FK_Hotelmage_Hotel] FOREIGN KEY([Hotelid])
REFERENCES [dbo].[Hotel] ([id])
GO
ALTER TABLE [dbo].[Hotelmage] CHECK CONSTRAINT [FK_Hotelmage_Hotel]
GO
ALTER TABLE [dbo].[HotelOfTour]  WITH CHECK ADD  CONSTRAINT [FK_HotelOfTour_Hotel] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel] ([id])
GO
ALTER TABLE [dbo].[HotelOfTour] CHECK CONSTRAINT [FK_HotelOfTour_Hotel]
GO
ALTER TABLE [dbo].[HotelOfTour]  WITH CHECK ADD  CONSTRAINT [FK_HotelOfTour_TourBase] FOREIGN KEY([TourId])
REFERENCES [dbo].[TourBase] ([id])
GO
ALTER TABLE [dbo].[HotelOfTour] CHECK CONSTRAINT [FK_HotelOfTour_TourBase]
GO
ALTER TABLE [dbo].[TypeOfTour]  WITH CHECK ADD  CONSTRAINT [FK_TypeOfTour_TourBase] FOREIGN KEY([TypeId])
REFERENCES [dbo].[TourBase] ([id])
GO
ALTER TABLE [dbo].[TypeOfTour] CHECK CONSTRAINT [FK_TypeOfTour_TourBase]
GO
ALTER TABLE [dbo].[TypeOfTour]  WITH CHECK ADD  CONSTRAINT [FK_TypeOfTour_Type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[TypeOfTour] CHECK CONSTRAINT [FK_TypeOfTour_Type]
GO
USE [master]
GO
ALTER DATABASE [TourBase] SET  READ_WRITE 
GO
