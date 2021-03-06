USE [master]
GO
/****** Object:  Database [DB_StudentInfo]    Script Date: 6/3/2015 8:42:41 AM ******/
CREATE DATABASE [DB_StudentInfo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_StudentInfo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_StudentInfo.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_StudentInfo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_StudentInfo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_StudentInfo] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_StudentInfo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_StudentInfo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DB_StudentInfo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_StudentInfo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_StudentInfo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_StudentInfo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_StudentInfo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_StudentInfo] SET  MULTI_USER 
GO
ALTER DATABASE [DB_StudentInfo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_StudentInfo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_StudentInfo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_StudentInfo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DB_StudentInfo]
GO
/****** Object:  Table [dbo].[StudentInfo_Table]    Script Date: 6/3/2015 8:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentInfo_Table](
	[Roll] [int] NULL,
	[Name] [varchar](50) NULL,
	[DateOfBirth] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[MotherName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[StudentInfo_Table] ([Roll], [Name], [DateOfBirth], [FatherName], [MotherName]) VALUES (1, N'Shohily  Haque', N'02-12-1992', N'A.K.M. Shahidul Haque', N'Salina Haque')
INSERT [dbo].[StudentInfo_Table] ([Roll], [Name], [DateOfBirth], [FatherName], [MotherName]) VALUES (2, N'Roma', N'11-09-2004', N'md. Najmul', N'Jumu Begom')
INSERT [dbo].[StudentInfo_Table] ([Roll], [Name], [DateOfBirth], [FatherName], [MotherName]) VALUES (4, N'Disha', N'06-11-1994', N'Mr. Babul', N'Joly Haque')
INSERT [dbo].[StudentInfo_Table] ([Roll], [Name], [DateOfBirth], [FatherName], [MotherName]) VALUES (9, N'Soma', N'11-11-2011', N'Mr. Sumon', N'July Begom')
INSERT [dbo].[StudentInfo_Table] ([Roll], [Name], [DateOfBirth], [FatherName], [MotherName]) VALUES (8, N'Sorna', N'12-02-1993', N'Ali', N'Banu')
USE [master]
GO
ALTER DATABASE [DB_StudentInfo] SET  READ_WRITE 
GO
