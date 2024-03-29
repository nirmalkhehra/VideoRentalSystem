USE [master]
GO
/****** Object:  Database [VideoRentalSystem]    Script Date: 17/12/2019 5:42:55 PM ******/
CREATE DATABASE [VideoRentalSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VideoRentalSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\VideoRentalSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VideoRentalSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\VideoRentalSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [VideoRentalSystem] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VideoRentalSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VideoRentalSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VideoRentalSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VideoRentalSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VideoRentalSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VideoRentalSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VideoRentalSystem] SET  MULTI_USER 
GO
ALTER DATABASE [VideoRentalSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VideoRentalSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VideoRentalSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VideoRentalSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VideoRentalSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VideoRentalSystem] SET QUERY_STORE = OFF
GO
USE [VideoRentalSystem]
GO
/****** Object:  Table [dbo].[CustomerCount]    Script Date: 17/12/2019 5:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Cunt] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerTbl]    Script Date: 17/12/2019 5:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTbl](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerPh] [varchar](50) NULL,
	[CustomerAddress] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieCount]    Script Date: 17/12/2019 5:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieCount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MovieID] [int] NULL,
	[Cunt] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalTbl]    Script Date: 17/12/2019 5:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalTbl](
	[RentalID] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NULL,
	[CustomerID] [int] NULL,
	[IssuedDate] [varchar](50) NULL,
	[ReturnDate] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VideoTbl]    Script Date: 17/12/2019 5:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VideoTbl](
	[VideoID] [int] IDENTITY(1,1) NOT NULL,
	[Ratting] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Year] [varchar](50) NULL,
	[Cost] [int] NULL,
	[Copies] [int] NULL,
	[Plot] [varchar](50) NULL,
	[Genre] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomerCount] ON 

INSERT [dbo].[CustomerCount] ([ID], [CustomerID], [Cunt]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[CustomerCount] OFF
SET IDENTITY_INSERT [dbo].[CustomerTbl] ON 

INSERT [dbo].[CustomerTbl] ([CustomerID], [CustomerName], [CustomerPh], [CustomerAddress]) VALUES (1, N'Sam', N'852369741', N'Auckland')
SET IDENTITY_INSERT [dbo].[CustomerTbl] OFF
SET IDENTITY_INSERT [dbo].[MovieCount] ON 

INSERT [dbo].[MovieCount] ([ID], [MovieID], [Cunt]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[MovieCount] OFF
SET IDENTITY_INSERT [dbo].[RentalTbl] ON 

INSERT [dbo].[RentalTbl] ([RentalID], [MovieId], [CustomerID], [IssuedDate], [ReturnDate]) VALUES (1, 1, 1, N'17/12/2019', N'Issued on Rent')
SET IDENTITY_INSERT [dbo].[RentalTbl] OFF
SET IDENTITY_INSERT [dbo].[VideoTbl] ON 

INSERT [dbo].[VideoTbl] ([VideoID], [Ratting], [Title], [Year], [Cost], [Copies], [Plot], [Genre]) VALUES (1, N'5', N'Race', N'2015', 5, 10, N'Action', N'Action')
SET IDENTITY_INSERT [dbo].[VideoTbl] OFF
USE [master]
GO
ALTER DATABASE [VideoRentalSystem] SET  READ_WRITE 
GO
