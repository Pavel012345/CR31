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
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (1, N'Рено                ', N'Логан               ', 2011, N'Серый               ', N'Эконом              ', 1300, N'К635РУ 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (2, N'Ниссан              ', N'Альмера             ', 2012, N'Белый               ', N'Эконом              ', 1500, N'Р354ОА 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (3, N'Митсубиси           ', N'Лансер              ', 2010, N'Чёрный              ', N'Эконом              ', 1700, N'Х273ВТ 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (4, N'Фольцваген          ', N'Пассат              ', 2012, N'Серебристый         ', N'Эконом              ', 2000, N'В659АА 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (5, N'Шкода               ', N'Октавия             ', 2016, N'Синий               ', N'Эконом              ', 2000, N'М128КН 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (6, N'Киа                 ', N'Рио                 ', 2016, N'Красный             ', N'Эконом              ', 2000, N'О348ОМ 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (7, N'Мерседес-бенз       ', N'GLA                 ', 2019, N'Белый               ', N'Комфорт             ', 5000, N'У764НО 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (8, N'Тойота              ', N'Камри               ', 2014, N'Черный              ', N'Комфорт             ', 4000, N'Р912РТ 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (9, N'Тойота              ', N'Рав4                ', 2013, N'Черный              ', N'Комфорт             ', 3500, N'А612УУ 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (10, N'Фольцваген          ', N'Тигуан              ', 2011, N'Белый               ', N'Комфорт             ', 3500, N'К832НМ 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (11, N'Лексус              ', N'ES                  ', 2019, N'Красный             ', N'Бизнес              ', 6500, N'Е323ЕО 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (12, N'Ауди                ', N'А5                  ', 2019, N'Черный              ', N'Бизнес              ', 7000, N'О823АС 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (13, N'Митсубиси           ', N'Паджеро             ', 2014, N'Белый               ', N'Бизнес              ', 6500, N'Р728НО 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (14, N'БМВ                 ', N'X7                  ', 2021, N'Синий               ', N'Премиум             ', 10000, N'К777УА 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (15, N'Тесла               ', N'Модел 3             ', 2018, N'Красный             ', N'Премиум             ', 15000, N'Т142ТТ 71           ')
GO
INSERT [dbo].[Car] ([CarID], [BrandCar], [Model], [YearOfRelease], [Color], [Class], [CostPerDay], [StateNumber]) VALUES (16, N'Инфинити            ', N'QX80                ', 2017, N'Черный              ', N'Премиум             ', 9000, N'У754НО 71           ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (1, N'Симакина Лариса Романовна               ', N'05.05.1992          ', 465595, 735873855, 5, 794931924, N'larisa1992@yandex.ru                    ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (2, N'Рудина Марфа Даниловна                  ', N'08.12.1975          ', 654588, 424682863, 15, 791874257, N'marfa.rud@mail.ru                       ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (3, N'Мигунов Евгений Игнатьевич              ', N'23.08.1979          ', 548941, 755871776, 12, 796171178, N'migunov@gmail.com                       ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (4, N'Сизов Сергей Федорович                  ', N'16.03.1978          ', 989855, 619778818, 12, 791172685, N'sergey6251@mail.ru                      ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (5, N'Васильев Арсений Константинович         ', N'25.02.1970          ', 549455, 231933304, 27, 792988138, N'VAsiliEv@mail.ru                        ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (6, N'Монакова Алиса Вениаминовна             ', N'09.02.1977          ', 549841, 381721516, 20, 798461595, N'Monakova@gmail.com                      ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (7, N'Кичеев Серафим Антонович                ', N'07.11.1990          ', 548944, 870769157, 5, 793877224, N'KICHEEV@mail.ru                         ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (8, N'Бобр Петр Юрьевич                       ', N'15.09.1987          ', 121658, 613273721, 8, 796215653, N'bobr.peter@mail.ru                      ')
GO
INSERT [dbo].[Client] ([ClientID], [FullName], [DateOfBirth], [Passport], [DrivingLicense], [DrivingExperience], [PhoneNumber], [Email]) VALUES (9, N'Леваневская Екатерина Саввановна        ', N'27.04.1983          ', 545416, 943588347, 9, 794145849, N'levanevskaya@mail..ru                   ')
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
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (1, 1, N'Колесников Никита Сергеевич             ', 794261855, N'Kolesnikov@gmail.com          ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (2, 2, N'Королева Софья Филипповна               ', 792912996, N'koroleva1@mail.ru             ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (3, 2, N'Балашева Евгения Ивановна               ', 793465328, N'eugenia@yandex.ru             ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (4, 2, N'Юдин Михаил Сергеевич                   ', 795465739, N'YudinM@mail.ru                ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (5, 2, N'Коновалов Михаил Данииллович            ', 795735615, N'Konovalov@gmail.com           ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (6, 2, N'Климов Илья Владимирович                ', 796272473, N'klimov3264@mail.ru            ')
GO
INSERT [dbo].[Exployee] ([ExployeeID], [RoleID], [FullNameExployee], [PhoneNumberExployee], [EmailExployee]) VALUES (7, 1, N'Рубцова Татьяна Михайловна              ', 793642384, N'TatianaRub@mail.ru            ')
GO
INSERT [dbo].[Order] ([FIO], [BrandCar], [Model], [LeaseTime]) VALUES (N'Грачева В. Ю.                 ', N'Рио                 ', N'Киа                 ', N'5                   ')
GO
INSERT [dbo].[Order] ([FIO], [BrandCar], [Model], [LeaseTime]) VALUES (N'Громов Д. И.                  ', N'QX80                ', N'Инфинити            ', N'7                   ')
GO
INSERT [dbo].[Order] ([FIO], [BrandCar], [Model], [LeaseTime]) VALUES (N'Жуков Д. С.                   ', N'Логан               ', N'Рено                ', N'3                   ')
GO
INSERT [dbo].[Order] ([FIO], [BrandCar], [Model], [LeaseTime]) VALUES (N'Журавлев С. Д.                ', N'Рав4                ', N'Тойота              ', N'1                   ')
GO
INSERT [dbo].[Role] ([RoleID], [Role]) VALUES (1, N'Администратор            ')
GO
INSERT [dbo].[Role] ([RoleID], [Role]) VALUES (2, N'Менеджер                 ')
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
