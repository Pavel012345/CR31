CREATE DATABASE [CR3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CR3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CR3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CR3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CR3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CR3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CR3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CR3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CR3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CR3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CR3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CR3] SET ARITHABORT OFF 
GO
ALTER DATABASE [CR3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CR3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CR3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CR3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CR3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CR3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CR3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CR3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CR3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CR3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CR3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CR3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CR3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CR3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CR3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CR3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CR3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CR3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CR3] SET  MULTI_USER 
GO
ALTER DATABASE [CR3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CR3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CR3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CR3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CR3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CR3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CR3] SET QUERY_STORE = OFF
GO
USE [CR3]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 25.12.2022 20:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[CarID] [int] NOT NULL,
	[BrandCar] [nchar](20) NOT NULL,
	[Model] [nchar](20) NOT NULL,
	[YearOfRelease] [int] NOT NULL,
	[Color] [nchar](20) NOT NULL,
	[Class] [nchar](20) NOT NULL,
	[CostPerDay] [int] NOT NULL,
	[StateNumber] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 25.12.2022 20:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] NOT NULL,
	[FullName] [nchar](40) NOT NULL,
	[DateOfBirth] [nchar](20) NOT NULL,
	[Passport] [int] NOT NULL,
	[DrivingLicense] [int] NOT NULL,
	[DrivingExperience] [int] NOT NULL,
	[PhoneNumber] [int] NOT NULL,
	[Email] [nchar](40) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 25.12.2022 20:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[ContractID] [int] NOT NULL,
	[ExployeeID] [int] NOT NULL,
	[ClientID] [int] NOT NULL,
	[CarID] [int] NOT NULL,
	[Amount] [money] NOT NULL,
	[Start_rent] [date] NOT NULL,
	[Stop_rent] [date] NOT NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exployee]    Script Date: 25.12.2022 20:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exployee](
	[ExployeeID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[FullNameExployee] [nchar](40) NOT NULL,
	[PhoneNumberExployee] [int] NOT NULL,
	[EmailExployee] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Exployee] PRIMARY KEY CLUSTERED 
(
	[ExployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 25.12.2022 20:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[FIO] [nchar](30) NOT NULL,
	[BrandCar] [nchar](20) NOT NULL,
	[Model] [nchar](20) NOT NULL,
	[LeaseTime] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[FIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.12.2022 20:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[Role] [nchar](25) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tax]    Script Date: 25.12.2022 20:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[TaxID] [int] NOT NULL,
	[ContractID] [int] NOT NULL,
	[ClientID] [int] NOT NULL,
	[ExployeeID] [int] NOT NULL,
	[CarID] [int] NOT NULL,
	[Amount_tax] [money] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[TaxID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.12.2022 20:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Login] [nchar](40) NOT NULL,
	[Password] [nchar](12) NOT NULL,
	[TelephoneNumber] [nchar](10) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (1, N'????????                ', N'??????????               ', 2011, N'??????????               ', N'????????????              ', 1300, N'??635???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (2, N'????????????              ', N'??????????????             ', 2012, N'??????????               ', N'????????????              ', 1500, N'??354???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (3, N'??????????????????           ', N'????????????              ', 2010, N'????????????              ', N'????????????              ', 1700, N'??273???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (4, N'????????????????????          ', N'????????????              ', 2012, N'??????????????????????         ', N'????????????              ', 2000, N'??659???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (5, N'??????????               ', N'??????????????             ', 2016, N'??????????               ', N'????????????              ', 2000, N'??128???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (6, N'??????                 ', N'??????                 ', 2016, N'??????????????             ', N'????????????              ', 2000, N'??348???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (7, N'????????????????-????????       ', N'GLA                 ', 2019, N'??????????               ', N'??????????????             ', 5000, N'??764???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (8, N'????????????              ', N'??????????               ', 2014, N'????????????              ', N'??????????????             ', 4000, N'??912???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (9, N'????????????              ', N'??????4                ', 2013, N'????????????              ', N'??????????????             ', 3500, N'??612???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (10, N'????????????????????          ', N'????????????              ', 2011, N'??????????               ', N'??????????????             ', 3500, N'??832???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (11, N'????????????              ', N'ES                  ', 2019, N'??????????????             ', N'????????????              ', 6500, N'??323???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (12, N'????????                ', N'??5                  ', 2019, N'????????????              ', N'????????????              ', 7000, N'??823???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (13, N'??????????????????           ', N'??????????????             ', 2014, N'??????????               ', N'????????????              ', 6500, N'??728???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (14, N'??????                 ', N'X7                  ', 2021, N'??????????               ', N'??????????????             ', 10000, N'??777???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (15, N'??????????               ', N'?????????? 3             ', 2018, N'??????????????             ', N'??????????????             ', 15000, N'??142???? 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (16, N'????????????????            ', N'QX80                ', 2017, N'????????????              ', N'??????????????             ', 9000, N'??754???? 71           ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (1, N'???????????????? ???????????? ??????????????????               ', N'05.05.1992          ', 465595, 735873855, 5, 794931924, N'larisa1992@yandex.ru                    ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (2, N'???????????? ?????????? ??????????????????                  ', N'08.12.1975          ', 654588, 424682863, 15, 791874257, N'marfa.rud@mail.ru                       ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (3, N'?????????????? ?????????????? ????????????????????              ', N'23.08.1979          ', 548941, 755871776, 12, 796171178, N'migunov@gmail.com                       ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (4, N'?????????? ???????????? ??????????????????                  ', N'16.03.1978          ', 989855, 619778818, 12, 791172685, N'sergey6251@mail.ru                      ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (5, N'???????????????? ?????????????? ????????????????????????????         ', N'25.02.1970          ', 549455, 231933304, 27, 792988138, N'VAsiliEv@mail.ru                        ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (6, N'???????????????? ?????????? ????????????????????????             ', N'09.02.1977          ', 549841, 381721516, 20, 798461595, N'Monakova@gmail.com                      ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (7, N'???????????? ?????????????? ??????????????????                ', N'07.11.1990          ', 548944, 870769157, 5, 793877224, N'KICHEEV@mail.ru                         ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (8, N'???????? ???????? ??????????????                       ', N'15.09.1987          ', 121658, 613273721, 8, 796215653, N'bobr.peter@mail.ru                      ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (9, N'?????????????????????? ?????????????????? ????????????????????        ', N'27.04.1983          ', 545416, 943588347, 9, 794145849, N'levanevskaya@mail..ru                   ')
GO
INSERT [dbo].[Contract] ([ContractID], [ExployeeID], [ClientID], [CarID], [Amount], [Start_rent], [Stop_rent]) VALUES (1, 3, 1, 3, 6800.0000, CAST(N'2022-11-01' AS Date), CAST(N'2022-11-04' AS Date))
GO
INSERT [dbo].[Contract] ([ContractID], [ExployeeID], [ClientID], [CarID], [Amount], [Start_rent], [Stop_rent]) VALUES (2, 3, 2, 11, 39000.0000, CAST(N'2022-11-01' AS Date), CAST(N'2022-02-06' AS Date))
GO
INSERT [dbo].[Contract] ([ContractID], [ExployeeID], [ClientID], [CarID], [Amount], [Start_rent], [Stop_rent]) VALUES (3, 6, 3, 2, 10500.0000, CAST(N'2022-11-04' AS Date), CAST(N'2022-11-10' AS Date))
GO
INSERT [dbo].[Contract] ([ContractID], [ExployeeID], [ClientID], [CarID], [Amount], [Start_rent], [Stop_rent]) VALUES (4, 2, 6, 5, 20000.0000, CAST(N'2022-11-06' AS Date), CAST(N'2022-11-15' AS Date))
GO
INSERT [dbo].[Contract] ([ContractID], [ExployeeID], [ClientID], [CarID], [Amount], [Start_rent], [Stop_rent]) VALUES (5, 6, 9, 4, 22000.0000, CAST(N'2022-11-10' AS Date), CAST(N'2022-11-20' AS Date))
GO
INSERT [dbo].[Contract] ([ContractID], [ExployeeID], [ClientID], [CarID], [Amount], [Start_rent], [Stop_rent]) VALUES (6, 5, 7, 14, 40000.0000, CAST(N'2022-11-12' AS Date), CAST(N'2022-11-15' AS Date))
GO
INSERT [dbo].[Contract] ([ContractID], [ExployeeID], [ClientID], [CarID], [Amount], [Start_rent], [Stop_rent]) VALUES (7, 4, 4, 12, 42000.0000, CAST(N'2022-11-12' AS Date), CAST(N'2022-11-17' AS Date))
GO
INSERT [dbo].[Contract] ([ContractID], [ExployeeID], [ClientID], [CarID], [Amount], [Start_rent], [Stop_rent]) VALUES (8, 2, 5, 11, 52000.0000, CAST(N'2022-11-18' AS Date), CAST(N'2022-11-25' AS Date))
GO
INSERT [dbo].[Contract] ([ContractID], [ExployeeID], [ClientID], [CarID], [Amount], [Start_rent], [Stop_rent]) VALUES (9, 5, 8, 7, 40000.0000, CAST(N'2022-11-21' AS Date), CAST(N'2022-11-28' AS Date))
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (1, 1, N'???????????????????? ???????????? ??????????????????             ', 794261855, N'Kolesnikov@gmail.com          ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (2, 2, N'???????????????? ?????????? ????????????????????               ', 792912996, N'koroleva1@mail.ru             ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (3, 2, N'???????????????? ?????????????? ????????????????               ', 793465328, N'eugenia@yandex.ru             ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (4, 2, N'???????? ???????????? ??????????????????                   ', 795465739, N'YudinM@mail.ru                ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (5, 2, N'?????????????????? ???????????? ??????????????????????            ', 795735615, N'Konovalov@gmail.com           ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (6, 2, N'???????????? ???????? ????????????????????????                ', 796272473, N'klimov3264@mail.ru            ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (7, 1, N'?????????????? ?????????????? ????????????????????              ', 793642384, N'TatianaRub@mail.ru            ')
GO
INSERT [dbo].[Order] ([FIO], [BrandCar], [Model], [LeaseTime]) VALUES (N'?????????????? ??. ??.                 ', N'??????                 ', N'??????                 ', N'5                   ')
GO
INSERT [dbo].[Order] ([FIO], [BrandCar], [Model], [LeaseTime]) VALUES (N'???????????? ??. ??.                  ', N'QX80                ', N'????????????????            ', N'7                   ')
GO
INSERT [dbo].[Order] ([FIO], [BrandCar], [Model], [LeaseTime]) VALUES (N'?????????? ??. ??.                   ', N'??????????               ', N'????????                ', N'3                   ')
GO
INSERT [dbo].[Order] ([FIO], [BrandCar], [Model], [LeaseTime]) VALUES (N'???????????????? ??. ??.                ', N'??????4                ', N'????????????              ', N'1                   ')
GO
INSERT [dbo].[Role] ([RoleID], [Role]) VALUES (1, N'??????????????????????????            ')
GO
INSERT [dbo].[Role] ([RoleID], [Role]) VALUES (2, N'????????????????                 ')
GO
INSERT [dbo].[Tax] ([TaxID], [ContractID], [ClientID], [ExployeeID], [CarID], [Amount_tax], [Date]) VALUES (1, 5, 9, 6, 4, 5000.0000, CAST(N'2022-10-15' AS Date))
GO
INSERT [dbo].[Tax] ([TaxID], [ContractID], [ClientID], [ExployeeID], [CarID], [Amount_tax], [Date]) VALUES (2, 7, 4, 4, 12, 500.0000, CAST(N'2022-10-17' AS Date))
GO
INSERT [dbo].[Tax] ([TaxID], [ContractID], [ClientID], [ExployeeID], [CarID], [Amount_tax], [Date]) VALUES (3, 9, 8, 5, 7, 1000.0000, CAST(N'2022-10-27' AS Date))
GO
INSERT [dbo].[User] ([Login], [Password], [TelephoneNumber]) VALUES (N'                                        ', N'            ', N'          ')
GO
INSERT [dbo].[User] ([Login], [Password], [TelephoneNumber]) VALUES (N'1000                                    ', N'1000        ', N'          ')
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Car] FOREIGN KEY([CarID])
REFERENCES [dbo].[Car] ([CarID])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Car]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Client]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Exployee] FOREIGN KEY([ExployeeID])
REFERENCES [dbo].[Exployee] ([ExployeeID])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Exployee]
GO
ALTER TABLE [dbo].[Exployee]  WITH CHECK ADD  CONSTRAINT [FK_Exployee_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Exployee] CHECK CONSTRAINT [FK_Exployee_Role]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [FK_Tax_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contract] ([ContractID])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [FK_Tax_Contract]
GO
USE [master]
GO
ALTER DATABASE [CR3] SET  READ_WRITE 
GO
