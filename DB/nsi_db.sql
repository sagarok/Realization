USE [NSI]
GO
/****** Object:  Table [dbo].[Agreement]    Script Date: 10.04.2017 10:38:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agreement](
	[idAgreement] [int] IDENTITY(1,1) NOT NULL,
	[idPrimaryAgreement] [int] NULL,
	[idAgreeDBF] [int] NOT NULL,
	[NumberInt] [char](10) NOT NULL,
	[NumberOfDocument] [varchar](50) NOT NULL,
	[NumBin] [varchar](25) NOT NULL,
	[DateOfDocument] [datetime] NULL,
	[DateOfSigning] [datetime] NULL,
	[DateOfBegin] [datetime] NULL,
	[DateOfEnd] [datetime] NULL,
	[SourceDateOfEnd] [datetime] NULL,
	[idJurist] [int] NOT NULL,
	[idPerformer] [int] NOT NULL,
	[idUserDbf] [char](7) NULL,
	[idDepartment] [int] NOT NULL,
	[kpodDbf] [char](6) NULL,
	[idCodeInitiator] [char](6) NOT NULL,
	[idCounteragent] [int] NOT NULL,
	[idCounteragent2] [int] NOT NULL,
	[NameCounteragent2] [varchar](100) NOT NULL,
	[Contents] [varchar](100) NOT NULL,
	[idCurrency] [int] NULL,
	[KodVal] [varchar](2) NOT NULL,
	[Amount] [decimal](19, 2) NOT NULL,
	[idStateType] [int] NOT NULL,
	[idAgreementView] [int] NOT NULL,
	[idPaymentType] [int] NOT NULL,
	[idObjectPay] [int] NOT NULL,
	[idAgreementType] [int] NOT NULL,
	[DisAgreementExist] [bit] NOT NULL,
	[idTender] [int] NOT NULL,
	[TenderExist] [bit] NOT NULL,
	[NumberOfTender] [varchar](20) NOT NULL,
	[IdProcTender] [int] NOT NULL,
	[DateOfTender] [datetime] NULL,
	[idNormativeDocument] [int] NOT NULL,
	[idDocumentType] [int] NOT NULL,
	[idPassportOfBargain] [int] NOT NULL,
	[FaxExist] [bit] NOT NULL,
	[TaxCheck] [bit] NOT NULL,
	[AuditExec] [bit] NOT NULL,
	[PeriodStorage] [bit] NOT NULL,
	[idRemark] [int] NOT NULL,
	[DateOfAktCheck] [datetime] NULL,
	[CloseAgree] [bit] NOT NULL,
	[StopAgree] [int] NOT NULL,
	[_Arm] [varchar](20) NOT NULL,
	[_idUserAdd] [varchar](20) NOT NULL,
	[_DateAdd] [datetime] NULL,
	[_idUserEdit] [varchar](20) NOT NULL,
	[_DateEdit] [datetime] NULL,
	[_RowVersion] [timestamp] NULL,
	[idStructure] [int] NOT NULL,
	[NumDocZak] [varchar](50) NOT NULL,
	[MonthPost] [int] NULL,
	[YearPost] [int] NULL,
	[PrimPost] [varchar](50) NULL,
	[CloseAgreeUser] [bit] NOT NULL,
	[idVidAgreeExport] [int] NOT NULL,
	[idVidDocument] [int] NOT NULL,
	[idParentAgree] [int] NOT NULL,
	[TextParentAgree] [varchar](50) NOT NULL,
	[Offshore] [bit] NOT NULL,
 CONSTRAINT [PK_Agreement] PRIMARY KEY CLUSTERED 
(
	[idAgreement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[linkedpredpr]    Script Date: 10.04.2017 10:38:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[linkedpredpr](
	[idpredpr] [int] NULL,
	[inn] [varchar](20) NULL,
	[naim] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rPerformer]    Script Date: 10.04.2017 10:38:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rPerformer](
	[idPerformer] [int] IDENTITY(1,1) NOT NULL,
	[NamePerformer] [varchar](50) NULL,
	[Jurist] [int] NOT NULL,
	[idPeople] [int] NOT NULL,
	[Tabn] [varchar](5) NOT NULL,
	[Zex] [varchar](2) NULL,
	[idDepartment] [int] NOT NULL,
	[idCodeInitiator] [char](6) NOT NULL,
 CONSTRAINT [PK_rPerformer] PRIMARY KEY CLUSTERED 
(
	[idPerformer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__Numbe__674C9A02]  DEFAULT ('') FOR [NumberInt]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__Numbe__6840BE3B]  DEFAULT ('') FOR [NumberOfDocument]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__NumBi__6934E274]  DEFAULT ('') FOR [NumBin]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idJur__6A2906AD]  DEFAULT (0) FOR [idJurist]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idPer__6B1D2AE6]  DEFAULT (0) FOR [idPerformer]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idUse__6C114F1F]  DEFAULT (0) FOR [idUserDbf]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idDep__6D057358]  DEFAULT (0) FOR [idDepartment]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idCod__6DF99791]  DEFAULT ('000') FOR [idCodeInitiator]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idCou__6EEDBBCA]  DEFAULT (0) FOR [idCounteragent]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_idCounteragent2]  DEFAULT (0) FOR [idCounteragent2]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_NameCounteragent2]  DEFAULT ('') FOR [NameCounteragent2]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__KodVa__6FE1E003]  DEFAULT ('') FOR [KodVal]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__Amoun__70D6043C]  DEFAULT (0) FOR [Amount]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idSta__71CA2875]  DEFAULT (0) FOR [idStateType]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idAgr__72BE4CAE]  DEFAULT (0) FOR [idAgreementView]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idPay__73B270E7]  DEFAULT (0) FOR [idPaymentType]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idObj__74A69520]  DEFAULT (0) FOR [idObjectPay]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idAgr__759AB959]  DEFAULT (0) FOR [idAgreementType]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idTen__768EDD92]  DEFAULT (0) FOR [idTender]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__Numbe__778301CB]  DEFAULT ('') FOR [NumberOfTender]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__IdPro__78772604]  DEFAULT (0) FOR [IdProcTender]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idNor__796B4A3D]  DEFAULT (0) FOR [idNormativeDocument]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idDoc__7A5F6E76]  DEFAULT (0) FOR [idDocumentType]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__idPas__7B5392AF]  DEFAULT (0) FOR [idPassportOfBargain]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__FaxEx__7C47B6E8]  DEFAULT (0) FOR [FaxExist]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__TaxCh__7D3BDB21]  DEFAULT (0) FOR [TaxCheck]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__Audit__7E2FFF5A]  DEFAULT (0) FOR [AuditExec]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement__Perio__7F242393]  DEFAULT (0) FOR [PeriodStorage]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_idRemark]  DEFAULT (0) FOR [idRemark]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_CloseAgree]  DEFAULT (0) FOR [CloseAgree]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_StopAgree]  DEFAULT (0) FOR [StopAgree]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement___Arm__001847CC]  DEFAULT ('') FOR [_Arm]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement___idUs__010C6C05]  DEFAULT ('') FOR [_idUserAdd]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF__Agreement___idUs__0200903E]  DEFAULT ('') FOR [_idUserEdit]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_idStructure]  DEFAULT (0) FOR [idStructure]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_NumDocZak]  DEFAULT ('') FOR [NumDocZak]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_CloseAgreeUser]  DEFAULT (0) FOR [CloseAgreeUser]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_idVidAgreeExport]  DEFAULT (0) FOR [idVidAgreeExport]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_idVidDocument]  DEFAULT (0) FOR [idVidDocument]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_idParentAgree]  DEFAULT (0) FOR [idParentAgree]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_TextParentAgree]  DEFAULT ('') FOR [TextParentAgree]
GO
ALTER TABLE [dbo].[Agreement] ADD  CONSTRAINT [DF_Agreement_Offshore]  DEFAULT (0) FOR [Offshore]
GO
ALTER TABLE [dbo].[rPerformer] ADD  CONSTRAINT [DF_rPerformer_idDepartment]  DEFAULT (0) FOR [idDepartment]
GO
ALTER TABLE [dbo].[rPerformer] ADD  CONSTRAINT [DF_rPerformer_idCodeInitiator]  DEFAULT ('000') FOR [idCodeInitiator]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'связанные поставщики для раскрытия информации по МСФО (письмо Суздалевой 20.03.17)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'linkedpredpr', @level2type=N'COLUMN',@level2name=N'idpredpr'
GO
