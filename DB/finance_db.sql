USE [Finance]
GO
/****** Object:  Table [dbo].[PostesPayDetail_all]    Script Date: 10.04.2017 10:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostesPayDetail_all](
	[idRegistrPayDocument] [int] NULL,
	[DebetAcc] [char](8) NULL,
	[CreditAcc] [char](8) NULL,
	[SumPostes] [decimal](18, 2) NULL,
	[SumPay] [decimal](18, 2) NULL,
	[Comment] [varchar](300) NULL,
	[idPostesPayDetail] [int] NOT NULL,
	[DateBank] [datetime] NULL,
	[DaTDocument] [datetime] NULL,
	[NumDocument] [varchar](10) NULL,
	[idvbank] [int] NULL,
	[idval] [int] NULL,
	[npach] [varchar](2) NULL,
	[kc] [varchar](2) NULL,
	[tabn] [varchar](5) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rAccountSelf]    Script Date: 10.04.2017 10:54:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rAccountSelf](
	[idAccountSelf] [int] NOT NULL,
	[idVal] [int] NULL,
	[idBank] [int] NULL,
	[idAccountSelfType] [int] NOT NULL,
	[idPeople] [int] NOT NULL,
	[AccountChart] [char](8) NULL,
	[Account] [char](20) NULL,
	[DateBegin] [datetime] NULL,
	[DateEnd] [datetime] NOT NULL,
	[Flag_] [char](1) NULL,
	[small] [varchar](4) NULL,
	[datadd] [datetime] NULL,
	[datkor] [datetime] NULL,
	[idStructure] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rBank]    Script Date: 10.04.2017 10:54:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rBank](
	[idBank] [int] NOT NULL,
	[nameBank] [varchar](120) NOT NULL,
	[BIK] [char](10) NOT NULL,
	[kBanc] [varchar](12) NOT NULL,
	[idCity] [int] NOT NULL,
	[AdrB] [varchar](41) NOT NULL,
	[PINDB] [char](6) NOT NULL,
	[BIKK] [char](10) NOT NULL,
	[nsi_id_entity] [int] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[idBank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegistrPayDocument_all]    Script Date: 10.04.2017 10:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrPayDocument_all](
	[idRegistrPayDocument] [int] NOT NULL,
	[idAgreement] [int] NULL,
	[idVal] [int] NULL,
	[idFirmBy] [int] NULL,
	[idAccountSelf] [int] NULL,
	[idPayDirection] [int] NULL,
	[idPayType] [int] NULL,
	[idJournalPayDocument] [int] NULL,
	[idFirm] [int] NULL,
	[idPeople] [int] NULL,
	[NoPayDocument] [int] NULL,
	[DatePayDocument] [datetime] NULL,
	[DateBank] [datetime] NULL,
	[PayAim] [varchar](1024) NULL,
	[AddCondition] [varchar](500) NULL,
	[SumPay] [decimal](18, 2) NULL,
	[SumPayRB] [decimal](18, 2) NULL,
	[idObjectPay] [int] NULL,
	[idDepartment] [int] NULL,
	[bh] [int] NOT NULL,
	[year] [smallint] NULL,
	[SourceName] [varchar](20) NULL,
	[idAgreementAdd] [int] NULL,
	[DatAdd] [datetime] NULL,
	[DatKor] [datetime] NULL,
	[SumPayUS] [decimal](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegistrPayDocumentPac]    Script Date: 10.04.2017 10:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrPayDocumentPac](
	[idRegistrPayDocument] [int] NULL,
	[idAgreement] [int] NULL,
	[SumPay] [decimal](18, 2) NULL,
	[SumPayRB] [decimal](18, 2) NULL,
	[bh] [int] NOT NULL,
	[year] [smallint] NULL,
	[idagreementAdd] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rPayDirection]    Script Date: 10.04.2017 10:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rPayDirection](
	[idPayDirection] [int] NOT NULL,
	[idPayUseOther] [int] NULL,
	[idPayUseInvest] [int] NULL,
	[CodeDirection] [char](4) NULL,
	[CodeDirectionOld] [char](4) NULL,
	[NamePayDirection] [varchar](50) NULL,
	[InOut] [tinyint] NULL,
	[Fl_zay] [char](1) NULL,
	[Fl_Agree] [char](1) NULL,
 CONSTRAINT [PK__rPayDirection__0FD8E2F2] PRIMARY KEY CLUSTERED 
(
	[idPayDirection] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rVal]    Script Date: 10.04.2017 10:54:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rVal](
	[idVal] [int] NOT NULL,
	[KodVal] [char](3) NOT NULL,
	[nameVal] [varchar](30) NOT NULL,
	[Rub_r] [varchar](8) NOT NULL,
	[Kop_r] [varchar](4) NOT NULL,
	[Rub_e] [varchar](8) NOT NULL,
	[Kor_e] [varchar](8) NOT NULL,
	[Kod] [char](3) NOT NULL,
	[KodAnal2] [char](2) NOT NULL,
	[nsi_id_entity] [int] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[idVal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TKursVal]    Script Date: 10.04.2017 10:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKursVal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[_date] [datetime] NOT NULL,
	[Cur_QuotName] [nvarchar](100) NULL,
	[Cur_Scale] [int] NULL,
	[Cur_OfficialRate] [decimal](18, 4) NULL,
	[Cur_Code] [int] NULL,
	[Cur_Abbreviation] [nvarchar](50) NULL,
	[_Timestamp] [timestamp] NULL,
 CONSTRAINT [PK_TKursVal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TStavkaRef]    Script Date: 10.04.2017 10:54:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TStavkaRef](
	[startDate] [datetime] NOT NULL,
	[val] [decimal](18, 2) NULL,
 CONSTRAINT [PK_TStavkaRef] PRIMARY KEY CLUSTERED 
(
	[startDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
