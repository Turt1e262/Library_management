USE [master]
GO
/****** Object:  Database [Library Management]    Script Date: 8/8/2023 10:27:19 PM ******/
CREATE DATABASE [Library Management]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Library Management', FILENAME = N'E:\SQL\MSSQL16.MSSQLSERVER\MSSQL\DATA\Library Management.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Library Management_log', FILENAME = N'E:\SQL\MSSQL16.MSSQLSERVER\MSSQL\DATA\Library Management_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Library Management] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Library Management].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Library Management] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Library Management] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Library Management] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Library Management] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Library Management] SET ARITHABORT OFF 
GO
ALTER DATABASE [Library Management] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Library Management] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Library Management] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Library Management] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Library Management] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Library Management] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Library Management] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Library Management] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Library Management] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Library Management] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Library Management] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Library Management] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Library Management] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Library Management] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Library Management] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Library Management] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Library Management] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Library Management] SET RECOVERY FULL 
GO
ALTER DATABASE [Library Management] SET  MULTI_USER 
GO
ALTER DATABASE [Library Management] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Library Management] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Library Management] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Library Management] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Library Management] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Library Management] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Library Management', N'ON'
GO
ALTER DATABASE [Library Management] SET QUERY_STORE = ON
GO
ALTER DATABASE [Library Management] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Library Management]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 8/8/2023 10:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[bookid] [int] IDENTITY(1,1) NOT NULL,
	[bookname] [nvarchar](50) NULL,
	[authorname] [nvarchar](50) NULL,
	[publication] [nvarchar](50) NULL,
	[purchasedate] [nvarchar](50) NULL,
	[bookprice] [nvarchar](50) NULL,
	[bookquantity] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueBook]    Script Date: 8/8/2023 10:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueBook](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[std_enroll] [varchar](250) NOT NULL,
	[std_name] [varchar](250) NOT NULL,
	[std_dep] [varchar](250) NOT NULL,
	[std_sem] [varchar](250) NOT NULL,
	[std_contact] [bigint] NOT NULL,
	[std_email] [varchar](250) NOT NULL,
	[book_name] [varchar](250) NOT NULL,
	[book_issue_date] [varchar](250) NOT NULL,
	[book_return_date] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 8/8/2023 10:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[pass] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pao]    Script Date: 8/8/2023 10:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pao](
	[id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 8/8/2023 10:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stuid] [int] IDENTITY(1,1) NOT NULL,
	[sname] [nvarchar](100) NOT NULL,
	[enroll] [nvarchar](100) NOT NULL,
	[dep] [nvarchar](100) NOT NULL,
	[sem] [nvarchar](100) NOT NULL,
	[contact] [bigint] NOT NULL,
	[email] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_addbook]    Script Date: 8/8/2023 10:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_addbook]
@bookname nvarchar(50),
@authorname nvarchar(50),
@publication nvarchar(50),
@purchasedate nvarchar(50),
@bookprice nvarchar(50),
@bookquantity nvarchar(50)
AS
BEGIN
insert into Books (bookname,
authorname ,
publication ,
purchasedate,
bookprice,
bookquantity )
VALUES (@bookname,
@authorname ,
@publication ,
@purchasedate,
@bookprice,
@bookquantity )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_AddStudent]    Script Date: 8/8/2023 10:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_AddStudent]
@sname nvarchar(100),
@enroll nvarchar(100),
@dep nvarchar(100),
@sem nvarchar(100),
@contact bigint,
@email nvarchar(100)
AS
BEGIN
insert into Student( sname,
enroll ,
dep ,
sem,
contact,
email )
VALUES ( @sname,
@enroll ,
@dep ,
@sem,
@contact,
@email )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Login]    Script Date: 8/8/2023 10:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_Login]
@username varchar(50),
@pass varchar(50)
AS 
BEGIN
Select*from Login where username =@username
and pass=@pass
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ViewBook]    Script Date: 8/8/2023 10:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_ViewBook]
@bookname nvarchar(50)
AS
Begin
IF (@bookname = '')
BEGIn
select*from Books
END
ELSE
BEGIN
select*from Books Where bookname=@bookname
END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ViewStudent]    Script Date: 8/8/2023 10:27:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_ViewStudent]
@sname nvarchar(50)
AS
Begin
IF (@sname = '')
BEGIn
select*from Student
END
ELSE
BEGIN
select*from Studnet Where sname=@sname
END
END
GO
USE [master]
GO
ALTER DATABASE [Library Management] SET  READ_WRITE 
GO
