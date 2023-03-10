USE [projeDB]
GO
/****** Object:  Table [dbo].[derstablo]    Script Date: 6.12.2022 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[derstablo](
	[dersid] [smallint] IDENTITY(1,1) NOT NULL,
	[dersadi] [varchar](30) NULL,
	[derskredisi] [varchar](30) NULL,
	[dersokulyonetimid] [smallint] NULL,
 CONSTRAINT [PK_tbl_ders] PRIMARY KEY CLUSTERED 
(
	[dersid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrenciderstablo]    Script Date: 6.12.2022 20:51:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenciderstablo](
	[ogrencidersid] [smallint] IDENTITY(1,1) NOT NULL,
	[ogrencidersdersid] [smallint] NULL,
	[ogrencidersogrenciid] [smallint] NULL,
 CONSTRAINT [PK_tbl_ogrenciders] PRIMARY KEY CLUSTERED 
(
	[ogrencidersid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrencilertablo]    Script Date: 6.12.2022 20:51:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrencilertablo](
	[ogrenciid] [smallint] IDENTITY(1,1) NOT NULL,
	[ogrenciadsoyad] [varchar](50) NULL,
	[ogrencikayittarih] [datetime] NULL,
	[ogrencidogumtarih] [datetime] NULL,
	[ogrencibolum] [varchar](50) NULL,
	[ogrencino] [varchar](11) NULL,
 CONSTRAINT [PK_tbl_ogrenciler] PRIMARY KEY CLUSTERED 
(
	[ogrenciid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[okulyonetimtablo]    Script Date: 6.12.2022 20:51:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[okulyonetimtablo](
	[yonetimid] [smallint] IDENTITY(1,1) NOT NULL,
	[yonetimadsoyad] [varchar](30) NULL,
	[yonetimgorevi] [varchar](30) NULL,
	[yonetimtipi] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_okulyonetim] PRIMARY KEY CLUSTERED 
(
	[yonetimid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[derstablo] ON 

INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (1, N'DLI', N'10', 3)
INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (2, N'KPT', N'5', 6)
INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (3, N'PHP', N'3', 3)
INSERT [dbo].[derstablo] ([dersid], [dersadi], [derskredisi], [dersokulyonetimid]) VALUES (4, N'Java', N'1', 1)
SET IDENTITY_INSERT [dbo].[derstablo] OFF
GO
SET IDENTITY_INSERT [dbo].[ogrenciderstablo] ON 

INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (1, 1, 3)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (2, 2, NULL)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (3, 3, 3)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (4, 1, 8)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (5, 2, NULL)
INSERT [dbo].[ogrenciderstablo] ([ogrencidersid], [ogrencidersdersid], [ogrencidersogrenciid]) VALUES (6, 1, NULL)
SET IDENTITY_INSERT [dbo].[ogrenciderstablo] OFF
GO
SET IDENTITY_INSERT [dbo].[ogrencilertablo] ON 

INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (3, N'Berkay Demir', CAST(N'2022-12-06T19:24:47.857' AS DateTime), CAST(N'1999-12-22T00:00:00.000' AS DateTime), N'Elektronik', N'3002')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (8, N'Sedat Ekici', CAST(N'2022-12-06T19:26:45.300' AS DateTime), CAST(N'2002-08-12T00:17:50.000' AS DateTime), N'Deniz ve Liman', N'3003')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (9, N'Arda Güldü', CAST(N'2022-12-06T19:27:25.377' AS DateTime), CAST(N'2001-06-19T22:56:38.000' AS DateTime), N'Aşcılık', N'3004')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (10, N'Altay Kova', CAST(N'2022-12-06T19:28:22.987' AS DateTime), CAST(N'1982-06-24T20:52:12.000' AS DateTime), N'Aşcılık', N'3005')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (11, N'Kemal Akay', CAST(N'2022-12-06T19:29:09.060' AS DateTime), CAST(N'2002-08-09T00:00:00.000' AS DateTime), N'Proglamlama', N'3006')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (12, N'Ferdi Yetenek', CAST(N'2022-12-06T19:30:00.820' AS DateTime), CAST(N'1993-07-22T00:00:00.000' AS DateTime), N'Proglamlama', N'3007')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (13, N'Serdar Koruma', CAST(N'2022-12-06T19:31:31.117' AS DateTime), CAST(N'1986-07-23T19:30:50.000' AS DateTime), N'Kaptanlık', N'3008')
INSERT [dbo].[ogrencilertablo] ([ogrenciid], [ogrenciadsoyad], [ogrencikayittarih], [ogrencidogumtarih], [ogrencibolum], [ogrencino]) VALUES (14, N'Serdar Durdu', CAST(N'2022-12-06T19:31:53.267' AS DateTime), CAST(N'1986-07-14T19:30:50.000' AS DateTime), N'Yedek Kaptanlık', N'3009')
SET IDENTITY_INSERT [dbo].[ogrencilertablo] OFF
GO
SET IDENTITY_INSERT [dbo].[okulyonetimtablo] ON 

INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (1, N'Cem Yılmaz', N'Matematik', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (2, N'Aykut Eriş', N'Yazılım', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (3, N'Mert Korkmaz', N'İşletme', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (4, N'Talip Karaman', N'Müdür Yardımcısı', N'11        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (5, N'Ömür Can', N'Müdür', N'11        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (6, N'Yılmaz Yiğit', N'Sosyal Bilgiler', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (9, N'Ersoy Kaslı', N'Muhasebe', N'11        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (10, N'İlkkan Köle', N'Sosyal Bilgiler', N'12        ')
INSERT [dbo].[okulyonetimtablo] ([yonetimid], [yonetimadsoyad], [yonetimgorevi], [yonetimtipi]) VALUES (11, N'Ekrem Priestson', N'Siyasal Bilimler', N'11        ')
SET IDENTITY_INSERT [dbo].[okulyonetimtablo] OFF
GO
ALTER TABLE [dbo].[derstablo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ders_tbl_okulyonetim] FOREIGN KEY([dersokulyonetimid])
REFERENCES [dbo].[okulyonetimtablo] ([yonetimid])
GO
ALTER TABLE [dbo].[derstablo] CHECK CONSTRAINT [FK_tbl_ders_tbl_okulyonetim]
GO
ALTER TABLE [dbo].[ogrenciderstablo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ogrenciders_tbl_ders] FOREIGN KEY([ogrencidersdersid])
REFERENCES [dbo].[derstablo] ([dersid])
GO
ALTER TABLE [dbo].[ogrenciderstablo] CHECK CONSTRAINT [FK_tbl_ogrenciders_tbl_ders]
GO
ALTER TABLE [dbo].[ogrenciderstablo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ogrenciders_tbl_ogrenciler1] FOREIGN KEY([ogrencidersogrenciid])
REFERENCES [dbo].[ogrencilertablo] ([ogrenciid])
GO
ALTER TABLE [dbo].[ogrenciderstablo] CHECK CONSTRAINT [FK_tbl_ogrenciders_tbl_ogrenciler1]
GO
