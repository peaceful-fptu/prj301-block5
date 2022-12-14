USE [master]
GO
/****** Object:  Database [Assignment]    Script Date: 8/17/2022 9:59:15 AM ******/
CREATE DATABASE [Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Assignment', N'ON'
GO
ALTER DATABASE [Assignment] SET QUERY_STORE = OFF
GO
USE [Assignment]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 8/17/2022 9:59:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[id_regency] [nvarchar](50) NOT NULL,
	[regency] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[id_regency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 8/17/2022 9:59:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[sid] [nvarchar](50) NOT NULL,
	[sname] [nvarchar](50) NOT NULL,
	[id_regency] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timesheet]    Script Date: 8/17/2022 9:59:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[id] [int] NOT NULL,
	[sid] [nvarchar](50) NOT NULL,
	[d1] [bit] NOT NULL,
	[d2] [bit] NOT NULL,
	[d3] [bit] NOT NULL,
	[d4] [bit] NOT NULL,
	[d5] [bit] NOT NULL,
	[d6] [bit] NOT NULL,
	[d7] [bit] NOT NULL,
	[d8] [bit] NOT NULL,
	[d9] [bit] NOT NULL,
	[d10] [bit] NOT NULL,
	[d11] [bit] NOT NULL,
	[d12] [bit] NOT NULL,
	[d13] [bit] NOT NULL,
	[d14] [bit] NOT NULL,
	[d15] [bit] NOT NULL,
	[d16] [bit] NOT NULL,
	[d17] [bit] NOT NULL,
	[d18] [bit] NOT NULL,
	[d19] [bit] NOT NULL,
	[d20] [bit] NOT NULL,
	[d21] [bit] NOT NULL,
	[d22] [bit] NOT NULL,
	[d23] [bit] NOT NULL,
	[d24] [bit] NOT NULL,
	[d25] [bit] NOT NULL,
	[d26] [bit] NOT NULL,
	[d27] [bit] NOT NULL,
	[d28] [bit] NOT NULL,
	[d29] [bit] NOT NULL,
	[d30] [bit] NOT NULL,
	[d31] [bit] NOT NULL,
 CONSTRAINT [PK_Timesheet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Position] ([id_regency], [regency]) VALUES (N'1', N'CB QHKH')
INSERT [dbo].[Position] ([id_regency], [regency]) VALUES (N'2', N'CB TVTC')
GO
INSERT [dbo].[Staff] ([sid], [sname], [id_regency]) VALUES (N'1', N'Đỗ Thị Hồng Nhung', N'1')
INSERT [dbo].[Staff] ([sid], [sname], [id_regency]) VALUES (N'2', N'Đặng Quốc Huy', N'1')
INSERT [dbo].[Staff] ([sid], [sname], [id_regency]) VALUES (N'3', N'Phạm Hồng Sơn', N'1')
INSERT [dbo].[Staff] ([sid], [sname], [id_regency]) VALUES (N'4', N'Nguyễn Thùy Linh', N'1')
INSERT [dbo].[Staff] ([sid], [sname], [id_regency]) VALUES (N'5', N'Lương Thị Thùy Linh', N'1')
INSERT [dbo].[Staff] ([sid], [sname], [id_regency]) VALUES (N'6', N'Nguyễn Thị Nhung', N'1')
INSERT [dbo].[Staff] ([sid], [sname], [id_regency]) VALUES (N'7', N'Ma Thị Quỳnh Diễm', N'2')
INSERT [dbo].[Staff] ([sid], [sname], [id_regency]) VALUES (N'8', N'Nguyễn Thị Chung Thành', N'1')
GO
INSERT [dbo].[Timesheet] ([id], [sid], [d1], [d2], [d3], [d4], [d5], [d6], [d7], [d8], [d9], [d10], [d11], [d12], [d13], [d14], [d15], [d16], [d17], [d18], [d19], [d20], [d21], [d22], [d23], [d24], [d25], [d26], [d27], [d28], [d29], [d30], [d31]) VALUES (1, N'1', 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[Timesheet] ([id], [sid], [d1], [d2], [d3], [d4], [d5], [d6], [d7], [d8], [d9], [d10], [d11], [d12], [d13], [d14], [d15], [d16], [d17], [d18], [d19], [d20], [d21], [d22], [d23], [d24], [d25], [d26], [d27], [d28], [d29], [d30], [d31]) VALUES (2, N'2', 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0)
INSERT [dbo].[Timesheet] ([id], [sid], [d1], [d2], [d3], [d4], [d5], [d6], [d7], [d8], [d9], [d10], [d11], [d12], [d13], [d14], [d15], [d16], [d17], [d18], [d19], [d20], [d21], [d22], [d23], [d24], [d25], [d26], [d27], [d28], [d29], [d30], [d31]) VALUES (3, N'3', 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[Timesheet] ([id], [sid], [d1], [d2], [d3], [d4], [d5], [d6], [d7], [d8], [d9], [d10], [d11], [d12], [d13], [d14], [d15], [d16], [d17], [d18], [d19], [d20], [d21], [d22], [d23], [d24], [d25], [d26], [d27], [d28], [d29], [d30], [d31]) VALUES (4, N'4', 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0)
INSERT [dbo].[Timesheet] ([id], [sid], [d1], [d2], [d3], [d4], [d5], [d6], [d7], [d8], [d9], [d10], [d11], [d12], [d13], [d14], [d15], [d16], [d17], [d18], [d19], [d20], [d21], [d22], [d23], [d24], [d25], [d26], [d27], [d28], [d29], [d30], [d31]) VALUES (5, N'5', 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[Timesheet] ([id], [sid], [d1], [d2], [d3], [d4], [d5], [d6], [d7], [d8], [d9], [d10], [d11], [d12], [d13], [d14], [d15], [d16], [d17], [d18], [d19], [d20], [d21], [d22], [d23], [d24], [d25], [d26], [d27], [d28], [d29], [d30], [d31]) VALUES (6, N'6', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[Timesheet] ([id], [sid], [d1], [d2], [d3], [d4], [d5], [d6], [d7], [d8], [d9], [d10], [d11], [d12], [d13], [d14], [d15], [d16], [d17], [d18], [d19], [d20], [d21], [d22], [d23], [d24], [d25], [d26], [d27], [d28], [d29], [d30], [d31]) VALUES (7, N'7', 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0)
INSERT [dbo].[Timesheet] ([id], [sid], [d1], [d2], [d3], [d4], [d5], [d6], [d7], [d8], [d9], [d10], [d11], [d12], [d13], [d14], [d15], [d16], [d17], [d18], [d19], [d20], [d21], [d22], [d23], [d24], [d25], [d26], [d27], [d28], [d29], [d30], [d31]) VALUES (8, N'8', 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0)
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Position] FOREIGN KEY([id_regency])
REFERENCES [dbo].[Position] ([id_regency])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Position]
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Staff] FOREIGN KEY([sid])
REFERENCES [dbo].[Staff] ([sid])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Staff]
GO
USE [master]
GO
ALTER DATABASE [Assignment] SET  READ_WRITE 
GO
