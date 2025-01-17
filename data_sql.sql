﻿USE [master]
GO
/****** Object:  Database [QLGC]    Script Date: 4/10/2022 7:01:06 PM ******/
CREATE DATABASE [QLGC]

GO
ALTER DATABASE [QLGC] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLGC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLGC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLGC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLGC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLGC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLGC] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLGC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLGC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLGC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLGC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLGC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLGC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLGC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLGC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLGC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLGC] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLGC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLGC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLGC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLGC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLGC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLGC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLGC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLGC] SET RECOVERY FULL 
GO
ALTER DATABASE [QLGC] SET  MULTI_USER 
GO
ALTER DATABASE [QLGC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLGC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLGC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLGC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLGC] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLGC] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLGC', N'ON'
GO
ALTER DATABASE [QLGC] SET QUERY_STORE = OFF
GO
USE [QLGC]
GO
/****** Object:  Table [dbo].[Breeding]    Script Date: 4/10/2022 7:01:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Breeding](
	[BreedId] [int] IDENTITY(2000,1) NOT NULL,
	[BreedDate] [date] NOT NULL,
	[DogId] [int] NOT NULL,
	[DogName] [varchar](50) NOT NULL,
	[PregDate] [date] NOT NULL,
	[DateBorned] [date] NOT NULL,
	[DogAge] [int] NOT NULL,
	[Remarks] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Breeding__D1E9AE9D5C151506] PRIMARY KEY CLUSTERED 
(
	[BreedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dog]    Script Date: 4/10/2022 7:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dog](
	[DogId] [int] IDENTITY(100,1) NOT NULL,
	[DogName] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Breed] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Wei] [int] NOT NULL,
	[Cost] [float] NULL,
 CONSTRAINT [PK__Dog__46F46EE93BBEBFA7] PRIMARY KEY CLUSTERED 
(
	[DogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/10/2022 7:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpId] [int] IDENTITY(300,1) NOT NULL,
	[EmpName] [nvarchar](50) NOT NULL,
	[EmpDob] [date] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Employee__AF2DBB992B1D0A55] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Health]    Script Date: 4/10/2022 7:01:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Health](
	[ReportId] [int] IDENTITY(500,1) NOT NULL,
	[DogId] [int] NOT NULL,
	[DogName] [varchar](50) NOT NULL,
	[ReportDate] [date] NOT NULL,
	[Event] [nvarchar](50) NOT NULL,
	[Diagnosis] [nvarchar](50) NOT NULL,
	[Cost] [varchar](50) NOT NULL,
	[Vetname] [nvarchar](50) NOT NULL,
	[Treatment] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Health__D5BD48057BD39E97] PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Dog] ON 

INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (121, N'Belarus', N'White', N'chó chăn cừu Trung Á', 8, 30, 20000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (122, N'Chó Alaska', N'Black', N'giống chó lai', 9, 31, 25000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (123, N'Chó ngao Anh', N'Brown', N'giống chó Anh', 10, 35, 30000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (124, N'Chó Dogo Argentino', N'Red', N'giống chó săn', 7, 36, 35000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (125, N'Chó núi Bernese ', N'Grape', N'có nguồn gốc từ dãy Alps của Thuỵ Điển', 6, 34, 15000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (126, N'Bloodhound', N'milk brown', N'giống chó săn', 5, 33, 10000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (127, N'Dogo', N'grey', N'giống chó Pháp', 11, 45, 40000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (128, N'Beauceron', N'Green', N'giống chó chăn cừu', 10, 42, 45000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (129, N'Briard', N'Yellow', N'giống chó chăn cừu', 2, 10, 46000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (130, N'Bullmastiff', N'Orange ', N'giống chó lai', 5, 11, 36000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (131, N'Chó Boerboel', N'Pink', N'giống chó săn', 6, 20, 37000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (132, N'Greyhound', N'Gray', N' giống chó cổ xưa', 7, 21, 38000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (133, N'Doberman', N'Purple', N'giống chó này được nhân giống ở Đức', 3, 12, 39000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (134, N'Golden', N'black', N'giống chó Scotland', 1, 9, 31000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (135, N'Ailen Setter', N'white', N'có nguồn gốc từ một thị trấn nhỏ ở Hoa Kỳ', 8, 15, 32000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (136, N'Chó ngao Tây Ban Nha', N'Light Blue', N'giống chó đến từ Tây Ban Nha', 4, 11, 33000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (137, N'Cane Corso', N'Limon ', N'giống chó bảo vệ', 12, 20, 34000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (138, N'Komondor', N'Pale blue', N'giống chó đến từ Hungary,', 81, 43, 29000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (139, N'Cocker Spaniel', N'Baby pink', N'giống chó săn', 18, 48, 28000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (140, N'Basset Hound', N'Vermeil', N'có nguồn gốc từ Anh', 16, 40, 27000000)
INSERT [dbo].[Dog] ([DogId], [DogName], [Color], [Breed], [Age], [Wei], [Cost]) VALUES (141, N'Welsh Corgi', N'Bright red', N'giống chó nhỏ có nguồn gốc từ xứ Wales', 17, 42, 24000000)
SET IDENTITY_INSERT [dbo].[Dog] OFF
GO
SET IDENTITY_INSERT [dbo].[Health] ON 

INSERT [dbo].[Health] ([ReportId], [DogId], [DogName], [ReportDate], [Event], [Diagnosis], [Cost], [Vetname], [Treatment]) VALUES (502, 136, N'Chó ngao Tây Ban Nha', CAST(N'2022-04-10' AS Date), N'Tắm mưa', N'Sốt nhẹ', N'250000', N'Hường', N'Uống thuốc')
SET IDENTITY_INSERT [dbo].[Health] OFF
GO
USE [master]
GO
ALTER DATABASE [QLGC] SET  READ_WRITE 
GO
