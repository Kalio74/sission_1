USE [SaverProBD]
GO
/****** Object:  Table [dbo].[PartUnit]    Script Date: Вт 14.03.23 14:56:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartUnit](
	[UnitPartID] [int] NOT NULL,
	[UnitPartName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartUnit] PRIMARY KEY CLUSTERED 
(
	[UnitPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: Вт 14.03.23 14:56:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
	[TimeRequest] [time](7) NULL,
	[StatusID] [int] NOT NULL,
	[Note] [nvarchar](100) NULL,
	[StaffID] [int] NOT NULL,
	[DateStart] [date] NOT NULL,
	[Date] [date] NULL,
	[DateStop] [date] NOT NULL,
	[TARGETID] [int] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestUser]    Script Date: Вт 14.03.23 14:56:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestUser](
	[RequestUserID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[RequestID] [int] NOT NULL,
 CONSTRAINT [PK_RequestUser] PRIMARY KEY CLUSTERED 
(
	[RequestUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: Вт 14.03.23 14:56:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FristName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[UnitPartID] [int] NULL,
	[UnitID] [int] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: Вт 14.03.23 14:56:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TARGET]    Script Date: Вт 14.03.23 14:56:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TARGET](
	[TARGETID] [int] NOT NULL,
	[TARGETName] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TARGET] PRIMARY KEY CLUSTERED 
(
	[TARGETID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: Вт 14.03.23 14:56:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TypeID] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: Вт 14.03.23 14:56:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] NOT NULL,
	[UnitName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: Вт 14.03.23 14:56:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[LastName] [nvarchar](25) NOT NULL,
	[FistName] [nvarchar](25) NOT NULL,
	[Ptronymic] [nvarchar](25) NULL,
	[Email] [nvarchar](40) NOT NULL,
	[SerialPass] [nchar](4) NOT NULL,
	[NumberPass] [nchar](6) NOT NULL,
	[Login] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Phone] [nvarchar](25) NULL,
	[Organization] [nvarchar](50) NULL,
	[Note] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[Brithdate] [date] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PartUnit] ([UnitPartID], [UnitPartName]) VALUES (1, N'Производство')
INSERT [dbo].[PartUnit] ([UnitPartID], [UnitPartName]) VALUES (2, N'Сбыт')
INSERT [dbo].[PartUnit] ([UnitPartID], [UnitPartName]) VALUES (3, N'Администрация')
INSERT [dbo].[PartUnit] ([UnitPartID], [UnitPartName]) VALUES (4, N'Служба безопасности')
INSERT [dbo].[PartUnit] ([UnitPartID], [UnitPartName]) VALUES (5, N'Планирование')
GO
INSERT [dbo].[Request] ([RequestID], [TypeID], [TimeRequest], [StatusID], [Note], [StaffID], [DateStart], [Date], [DateStop], [TARGETID]) VALUES (1, 2, CAST(N'13:25:00' AS Time), 1, NULL, 9367788, CAST(N'2023-02-24' AS Date), NULL, CAST(N'2023-03-11' AS Date), 1)
INSERT [dbo].[Request] ([RequestID], [TypeID], [TimeRequest], [StatusID], [Note], [StaffID], [DateStart], [Date], [DateStop], [TARGETID]) VALUES (2, 1, CAST(N'13:45:00' AS Time), 2, NULL, 9404040, CAST(N'2023-03-14' AS Date), NULL, CAST(N'2023-03-16' AS Date), 2)
INSERT [dbo].[Request] ([RequestID], [TypeID], [TimeRequest], [StatusID], [Note], [StaffID], [DateStart], [Date], [DateStop], [TARGETID]) VALUES (3, 2, CAST(N'16:43:00' AS Time), 1, NULL, 9737848, CAST(N'2023-03-14' AS Date), NULL, CAST(N'2023-03-18' AS Date), 1)
GO
INSERT [dbo].[Staff] ([StaffID], [LastName], [FristName], [Patronymic], [UnitPartID], [UnitID]) VALUES (9362832, N'Архипов', N'Тимофей', N'Васильевич', 4, NULL)
INSERT [dbo].[Staff] ([StaffID], [LastName], [FristName], [Patronymic], [UnitPartID], [UnitID]) VALUES (9367788, N'Фомичева', N'Авдотья', N'Трофимовна', 1, NULL)
INSERT [dbo].[Staff] ([StaffID], [LastName], [FristName], [Patronymic], [UnitPartID], [UnitID]) VALUES (9404040, N'Чернов', N'Всеволод', N'Наумович', NULL, 2)
INSERT [dbo].[Staff] ([StaffID], [LastName], [FristName], [Patronymic], [UnitPartID], [UnitID]) VALUES (9707070, N'Марков', N'Юрий', N'Романович', NULL, NULL)
INSERT [dbo].[Staff] ([StaffID], [LastName], [FristName], [Patronymic], [UnitPartID], [UnitID]) VALUES (9736379, N'Носкова', N'Наталия', N'Прохоровна', 3, NULL)
INSERT [dbo].[Staff] ([StaffID], [LastName], [FristName], [Patronymic], [UnitPartID], [UnitID]) VALUES (9737848, N'Орехова', N'Вероника', N'Артемовна', 5, NULL)
INSERT [dbo].[Staff] ([StaffID], [LastName], [FristName], [Patronymic], [UnitPartID], [UnitID]) VALUES (9768239, N'Савельев', N'Павел', N'Степанович', NULL, 1)
INSERT [dbo].[Staff] ([StaffID], [LastName], [FristName], [Patronymic], [UnitPartID], [UnitID]) VALUES (9788737, N'Гаврилова', N'Римма', N'Ефимовна', 2, NULL)
GO
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (1, N'Одобрено')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (2, N'Отказано')
GO
INSERT [dbo].[TARGET] ([TARGETID], [TARGETName]) VALUES (1, N'Экскурсия ')
INSERT [dbo].[TARGET] ([TARGETID], [TARGETName]) VALUES (2, N'Практика  ')
INSERT [dbo].[TARGET] ([TARGETID], [TARGETName]) VALUES (3, N'Проверка  ')
GO
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (1, N'Личное посещение')
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (2, N'Групповое посещение')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitName]) VALUES (1, N'Общий отдел')
INSERT [dbo].[Unit] ([UnitID], [UnitName]) VALUES (2, N'Охрана')
GO
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (1, N'Самойлова', N'Таисия', N'Гермоновна', N'Taisiya177@lenta.ru', N'5193', N'897719', N'Taisiya177', N'R94YGT3XFjgD', N'+7 (891) 555-81-44', N'', N'', N'', CAST(N'1979-11-14' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (2, N'Ситникова', N'Аделаида', N'Гермоновна', N'Adelaida20@hotmail.com', N'7561', N'148016', N'Adelaida20', N'LCY*{L*fEGYB', N'+7 (793) 736-70-31', N'', N'', N'', CAST(N'1979-01-21' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (3, N'Исаев', N'Лев', N'Юлианович', N'Lev131@rambler.ru', N'1860', N'680004', N'Lev131', N'~?oj2Lh@S7*T', N'+7 (675) 593-89-30', N'', N'', N'', CAST(N'1994-08-05' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (4, N'Никифоров', N'Даниил', N'Степанович', N'Daniil198@bk.ru', N'4557', N'999958', N'lzaihtvkdn', N'L2W#uo7z{EsO', N'+7 (384) 358-77-82', N'', N'', N'', CAST(N'1970-12-13' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (5, N'Титова', N'Людмила', N'Якововна', N'Lyudmila123@hotmail.com', N'7715', N'639425', N'Lyudmila123', N'@8mk9M?NBAGj', N'+7 (221) 729-16-84', N'', N'', N'', CAST(N'1976-08-21' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (6, N'Абрамова', N'Таисия', N'Дмитриевна', N'Taisiya176@hotmail.com', N'7310', N'893510', N'Taisiya176', N'~rIWfsnXA~7C', N'+7 (528) 312-18-20', N'', N'', N'', CAST(N'1982-11-20' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (7, N'Кузьмина', N'Вера', N'Максимовна', N'Vera195@list.ru', N'3537', N'982933', N'Vera195', N'B|5v$2r$7luL', N'+7 (598) 583-53-45', N'', N'', N'', CAST(N'1989-12-10' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (8, N'Мартынов', N'Яков', N'Ростиславович', N'YAkov196@rambler.ru', N'1793', N'986063', N'YAkov196', N'$6s5bggKP7aw', N'+7 (546) 159-67-33', N'', N'', N'', CAST(N'1976-12-05' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (9, N'Евсеева', N'Нина', N'Павловна', N'Nina145@msn.com', N'9323', N'745717', N'Nina145', N'Uxy6RtBXIcpT', N'+7 (833) 521-31-50', N'', N'', N'', CAST(N'1994-09-26' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (10, N'Голубев', N'Леонтий', N'Вячеславович', N'Leontij161@mail.ru', N'1059', N'822077', N'Leontij161', N'KkMY8yKw@oCa', N'+7 (160) 527-57-41', N'', N'', N'', CAST(N'1990-10-03' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (11, N'Карпова', N'Серафима', N'Михаиловна', N'Serafima169@yahoo.com', N'7034', N'858987', N'Serafima169', N'gNe3I9}8J3Z@', N'+7 (459) 930-91-70', N'', N'', N'', CAST(N'1989-11-19' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (12, N'Орехов', N'Сергей', N'Емельянович', N'Sergej35@inbox.ru', N'3844', N'223682', N'Sergej35', N'$39vc%ljqN%r', N'+7 (669) 603-29-87', N'', N'', N'', CAST(N'1972-02-11' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (13, N'Исаев', N'Георгий', N'Павлович', N'Georgij121@inbox.ru', N'4076', N'629809', N'Georgij121', N'bbx5H}f*BC?w', N'+7 (678) 516-36-86', N'', N'', N'', CAST(N'1987-08-11' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (14, N'Богданов', N'Елизар', N'Артемович', N'Elizar30@yandex.ru', N'5730', N'198559', N'Elizar30', N'wJs1~r3RS~dr', N'+7 (165) 768-30-97', N'', N'', N'', CAST(N'1978-02-02' AS Date))
INSERT [dbo].[User] ([UserID], [LastName], [FistName], [Ptronymic], [Email], [SerialPass], [NumberPass], [Login], [Password], [Phone], [Organization], [Note], [Photo], [Brithdate]) VALUES (15, N'Тихонова', N'Лана', N'Семеновна', N'Lana117@outlook.com', N'8761', N'609740', N'Lana117', N'mFoG$jcS3c4~', N'+7 (478) 467-75-15', N'', N'', N'', CAST(N'1990-07-24' AS Date))
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Staff]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Status1] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Status1]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_TARGET] FOREIGN KEY([TARGETID])
REFERENCES [dbo].[TARGET] ([TARGETID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_TARGET]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Type] ([TypeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Type]
GO
ALTER TABLE [dbo].[RequestUser]  WITH CHECK ADD  CONSTRAINT [FK_RequestUser_Request] FOREIGN KEY([RequestID])
REFERENCES [dbo].[Request] ([RequestID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RequestUser] CHECK CONSTRAINT [FK_RequestUser_Request]
GO
ALTER TABLE [dbo].[RequestUser]  WITH CHECK ADD  CONSTRAINT [FK_RequestUser_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RequestUser] CHECK CONSTRAINT [FK_RequestUser_User]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_PartUnit] FOREIGN KEY([UnitPartID])
REFERENCES [dbo].[PartUnit] ([UnitPartID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_PartUnit]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Unit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[Unit] ([UnitID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Unit]
GO
