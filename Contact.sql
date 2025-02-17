USE [master]
GO
/****** Object:  Database [Contact]    Script Date: 13.06.2020 02:57:46 ******/
CREATE DATABASE [Contact]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Contact', FILENAME = N'C:\Users\gabaar\Contact.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Contact_log', FILENAME = N'C:\Users\gabaar\Contact_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Contact] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Contact].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Contact] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Contact] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Contact] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Contact] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Contact] SET ARITHABORT OFF 
GO
ALTER DATABASE [Contact] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Contact] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Contact] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Contact] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Contact] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Contact] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Contact] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Contact] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Contact] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Contact] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Contact] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Contact] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Contact] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Contact] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Contact] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Contact] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Contact] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Contact] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Contact] SET  MULTI_USER 
GO
ALTER DATABASE [Contact] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Contact] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Contact] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Contact] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Contact] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Contact] SET QUERY_STORE = OFF
GO
USE [Contact]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Contact]
GO
/****** Object:  Table [dbo].[contactperson]    Script Date: 13.06.2020 02:57:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactperson](
	[tc] [varchar](11) NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[adress] [varchar](250) NULL,
	[message] [varchar](250) NULL,
 CONSTRAINT [PK_contactperson] PRIMARY KEY CLUSTERED 
(
	[tc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[contactperson] ([tc], [name], [surname], [mail], [adress], [message]) VALUES (N'', N'', N'', N'', N'', N'')
INSERT [dbo].[contactperson] ([tc], [name], [surname], [mail], [adress], [message]) VALUES (N'22555411489', N'Emre', N'Toplar', N'emre.toplar@gmail.com', N'istanbul/maltepe', N'merhabalar nasilsiniz')
INSERT [dbo].[contactperson] ([tc], [name], [surname], [mail], [adress], [message]) VALUES (N'63598102354', N'Serkan', N'Mis', N'mis@yahoo.com', N'bakirköy', N'tesekkürler')
INSERT [dbo].[contactperson] ([tc], [name], [surname], [mail], [adress], [message]) VALUES (N'85634700204', N'Salih', N'Cansu', N'salih@hotmail.com', N'Kartal/Cevizli', N'selam nasilsin')
INSERT [dbo].[contactperson] ([tc], [name], [surname], [mail], [adress], [message]) VALUES (N'96582340101', N'Gökhan', N'Zorgül', N'gokhanzorgul@gmail.com', N'samandira', N'selam arkadaslar ')
GO
USE [master]
GO
ALTER DATABASE [Contact] SET  READ_WRITE 
GO
