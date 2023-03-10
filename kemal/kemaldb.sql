USE [Okuldb]
GO
/****** Object:  Table [dbo].[tbl_ders]    Script Date: 1/17/2023 7:12:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ders](
	[ders_id] [smallint] IDENTITY(1,1) NOT NULL,
	[ders_ad] [varchar](30) NULL,
	[ders_kredi] [varchar](30) NULL,
	[ders_okulyonetimid] [smallint] NULL,
 CONSTRAINT [PK_tbl_ders] PRIMARY KEY CLUSTERED 
(
	[ders_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ogrenciders]    Script Date: 1/17/2023 7:12:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ogrenciders](
	[ogrenciders_id] [smallint] IDENTITY(1,1) NOT NULL,
	[ogrenciders_dersid] [smallint] NULL,
	[ogrenciders_ogrenciid] [smallint] NULL,
 CONSTRAINT [PK_tbl_ogrenciders] PRIMARY KEY CLUSTERED 
(
	[ogrenciders_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ogrenciler]    Script Date: 1/17/2023 7:12:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ogrenciler](
	[ogrenci_id] [smallint] IDENTITY(1,1) NOT NULL,
	[ogrenci_fullname] [varchar](50) NULL,
	[ogrenci_recorddate] [datetime] NULL,
	[ogrenci_birthdate] [datetime] NULL,
	[ogrenci_bolum] [varchar](50) NULL,
	[ogrenci_no] [varchar](11) NULL,
 CONSTRAINT [PK_tbl_ogrenciler] PRIMARY KEY CLUSTERED 
(
	[ogrenci_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_okulyonetim]    Script Date: 1/17/2023 7:12:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_okulyonetim](
	[yonetim_id] [smallint] IDENTITY(1,1) NOT NULL,
	[yonetim_adsoyad] [varchar](30) NULL,
	[yonetim_gorev] [varchar](30) NULL,
	[yonetim_tip] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_okulyonetim] PRIMARY KEY CLUSTERED 
(
	[yonetim_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_ders] ON 

INSERT [dbo].[tbl_ders] ([ders_id], [ders_ad], [ders_kredi], [ders_okulyonetimid]) VALUES (1, N'Matematik', N'5', 1)
INSERT [dbo].[tbl_ders] ([ders_id], [ders_ad], [ders_kredi], [ders_okulyonetimid]) VALUES (2, N'Coğrafya', N'2', 6)
INSERT [dbo].[tbl_ders] ([ders_id], [ders_ad], [ders_kredi], [ders_okulyonetimid]) VALUES (3, N'Kimya', N'3', 3)
INSERT [dbo].[tbl_ders] ([ders_id], [ders_ad], [ders_kredi], [ders_okulyonetimid]) VALUES (4, N'Astronomi', N'9', 1)
INSERT [dbo].[tbl_ders] ([ders_id], [ders_ad], [ders_kredi], [ders_okulyonetimid]) VALUES (5, N'Fizik', N'4', 3)
INSERT [dbo].[tbl_ders] ([ders_id], [ders_ad], [ders_kredi], [ders_okulyonetimid]) VALUES (8, N'Tarih', N'1', 2)
SET IDENTITY_INSERT [dbo].[tbl_ders] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ogrenciders] ON 

INSERT [dbo].[tbl_ogrenciders] ([ogrenciders_id], [ogrenciders_dersid], [ogrenciders_ogrenciid]) VALUES (1, 1, 3)
INSERT [dbo].[tbl_ogrenciders] ([ogrenciders_id], [ogrenciders_dersid], [ogrenciders_ogrenciid]) VALUES (2, 2, 1)
INSERT [dbo].[tbl_ogrenciders] ([ogrenciders_id], [ogrenciders_dersid], [ogrenciders_ogrenciid]) VALUES (3, 3, 3)
INSERT [dbo].[tbl_ogrenciders] ([ogrenciders_id], [ogrenciders_dersid], [ogrenciders_ogrenciid]) VALUES (4, 5, 8)
INSERT [dbo].[tbl_ogrenciders] ([ogrenciders_id], [ogrenciders_dersid], [ogrenciders_ogrenciid]) VALUES (5, 3, 8)
INSERT [dbo].[tbl_ogrenciders] ([ogrenciders_id], [ogrenciders_dersid], [ogrenciders_ogrenciid]) VALUES (6, 8, 1)
SET IDENTITY_INSERT [dbo].[tbl_ogrenciders] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ogrenciler] ON 

INSERT [dbo].[tbl_ogrenciler] ([ogrenci_id], [ogrenci_fullname], [ogrenci_recorddate], [ogrenci_birthdate], [ogrenci_bolum], [ogrenci_no]) VALUES (1, N'Kemal', CAST(N'2022-11-25T00:00:00.000' AS DateTime), CAST(N'2000-02-24T00:00:00.000' AS DateTime), N'Yazılım', N'350')
INSERT [dbo].[tbl_ogrenciler] ([ogrenci_id], [ogrenci_fullname], [ogrenci_recorddate], [ogrenci_birthdate], [ogrenci_bolum], [ogrenci_no]) VALUES (3, N'Yılmaz Güney', CAST(N'2022-11-25T00:00:00.000' AS DateTime), CAST(N'2000-02-10T00:00:00.000' AS DateTime), N'İşletme', N'120')
INSERT [dbo].[tbl_ogrenciler] ([ogrenci_id], [ogrenci_fullname], [ogrenci_recorddate], [ogrenci_birthdate], [ogrenci_bolum], [ogrenci_no]) VALUES (8, N'Oğuzhan Uğur', CAST(N'2022-11-26T00:18:28.073' AS DateTime), CAST(N'2002-08-14T00:17:50.000' AS DateTime), N'İşletme', N'130')
INSERT [dbo].[tbl_ogrenciler] ([ogrenci_id], [ogrenci_fullname], [ogrenci_recorddate], [ogrenci_birthdate], [ogrenci_bolum], [ogrenci_no]) VALUES (9, N'Talat Yılmaz', CAST(N'2023-01-11T13:38:28.287' AS DateTime), CAST(N'2000-07-25T00:17:50.000' AS DateTime), N'Gastronomi', N'150')
INSERT [dbo].[tbl_ogrenciler] ([ogrenci_id], [ogrenci_fullname], [ogrenci_recorddate], [ogrenci_birthdate], [ogrenci_bolum], [ogrenci_no]) VALUES (109, N'İpek Sude Yılmaz', CAST(N'2023-01-16T00:47:49.467' AS DateTime), CAST(N'2023-01-16T00:47:25.187' AS DateTime), N'Tıp', N'155')
SET IDENTITY_INSERT [dbo].[tbl_ogrenciler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_okulyonetim] ON 

INSERT [dbo].[tbl_okulyonetim] ([yonetim_id], [yonetim_adsoyad], [yonetim_gorev], [yonetim_tip]) VALUES (1, N'Uğur Aktaş', N'Matematik', N'12        ')
INSERT [dbo].[tbl_okulyonetim] ([yonetim_id], [yonetim_adsoyad], [yonetim_gorev], [yonetim_tip]) VALUES (2, N'Emre Durmuş', N'Yazılım', N'12        ')
INSERT [dbo].[tbl_okulyonetim] ([yonetim_id], [yonetim_adsoyad], [yonetim_gorev], [yonetim_tip]) VALUES (3, N'Sibel Can', N'İşletme', N'12        ')
INSERT [dbo].[tbl_okulyonetim] ([yonetim_id], [yonetim_adsoyad], [yonetim_gorev], [yonetim_tip]) VALUES (4, N'Tayyip Emre', N'Müdür Yardımcısı', N'11        ')
INSERT [dbo].[tbl_okulyonetim] ([yonetim_id], [yonetim_adsoyad], [yonetim_gorev], [yonetim_tip]) VALUES (5, N'Tülay Aydın', N'Müdür', N'11        ')
INSERT [dbo].[tbl_okulyonetim] ([yonetim_id], [yonetim_adsoyad], [yonetim_gorev], [yonetim_tip]) VALUES (6, N'Aslı Kel', N'Sosyal Bilgiler', N'12        ')
INSERT [dbo].[tbl_okulyonetim] ([yonetim_id], [yonetim_adsoyad], [yonetim_gorev], [yonetim_tip]) VALUES (9, N'Fadime Türkyılmaz', N'Muhasebe', N'11        ')
SET IDENTITY_INSERT [dbo].[tbl_okulyonetim] OFF
GO
ALTER TABLE [dbo].[tbl_ders]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ders_tbl_okulyonetim] FOREIGN KEY([ders_okulyonetimid])
REFERENCES [dbo].[tbl_okulyonetim] ([yonetim_id])
GO
ALTER TABLE [dbo].[tbl_ders] CHECK CONSTRAINT [FK_tbl_ders_tbl_okulyonetim]
GO
ALTER TABLE [dbo].[tbl_ogrenciders]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ogrenciders_tbl_ders] FOREIGN KEY([ogrenciders_dersid])
REFERENCES [dbo].[tbl_ders] ([ders_id])
GO
ALTER TABLE [dbo].[tbl_ogrenciders] CHECK CONSTRAINT [FK_tbl_ogrenciders_tbl_ders]
GO
ALTER TABLE [dbo].[tbl_ogrenciders]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ogrenciders_tbl_ogrenciler1] FOREIGN KEY([ogrenciders_ogrenciid])
REFERENCES [dbo].[tbl_ogrenciler] ([ogrenci_id])
GO
ALTER TABLE [dbo].[tbl_ogrenciders] CHECK CONSTRAINT [FK_tbl_ogrenciders_tbl_ogrenciler1]
GO
