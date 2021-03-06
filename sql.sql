USE [MMS]
GO
/****** Object:  Table [dbo].[M_Company]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Company](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCode] [varchar](20) NULL,
	[CompanyName] [nvarchar](250) NULL,
	[ContactName] [nvarchar](100) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Note] [nvarchar](255) NULL,
	[isMarket] [bit] NULL,
	[isActive] [bit] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Constant]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Constant](
	[ConstantID] [smallint] NOT NULL,
	[ConstantType] [smallint] NULL,
	[ConstantName] [nvarchar](100) NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_Constant] PRIMARY KEY CLUSTERED 
(
	[ConstantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Department]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [varchar](50) NULL,
	[DepartmentName] [nvarchar](200) NULL,
	[ContactName] [nvarchar](150) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Note] [nvarchar](255) NULL,
	[isMarket] [bit] NULL,
	[isActive] [bit] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_DepartmentDetail]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_DepartmentDetail](
	[DepartmentDetailID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NULL,
	[ProductID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_DepartmentDetail] PRIMARY KEY CLUSTERED 
(
	[DepartmentDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Employee]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [varchar](50) NULL,
	[EmployeeName] [nvarchar](150) NULL,
	[DepartmentID] [int] NULL,
	[IDNo] [nvarchar](15) NULL,
	[DOB] [datetime] NULL,
	[GenderID] [smallint] NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](30) NULL,
	[Mobile] [varchar](30) NULL,
	[Address] [nvarchar](250) NULL,
	[Note] [nvarchar](255) NULL,
	[isActive] [bit] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_HouseholdBusiness]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_HouseholdBusiness](
	[HouseholdBusinessID] [int] IDENTITY(1,1) NOT NULL,
	[HouseholdBusinessCode] [varchar](50) NULL,
	[HouseholdBusinessName] [nvarchar](250) NULL,
	[ContactName] [nvarchar](150) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[TemporaryAddress] [nvarchar](250) NULL,
	[PermanentAddress] [nvarchar](250) NULL,
	[LicenseNo] [nvarchar](50) NULL,
	[LicenseDate] [datetime] NULL,
	[ExpiredDate] [datetime] NULL,
	[CommitBusinessField] [nvarchar](500) NULL,
	[StatusID] [smallint] NULL,
	[Note] [nvarchar](255) NULL,
	[isActive] [bit] NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_HouseholdBusiness] PRIMARY KEY CLUSTERED 
(
	[HouseholdBusinessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Kiot]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Kiot](
	[KiotID] [int] IDENTITY(1,1) NOT NULL,
	[KiotCode] [nvarchar](20) NULL,
	[KiotName] [nvarchar](250) NULL,
	[Area] [float] NULL,
	[Position] [nvarchar](250) NULL,
	[RegionID] [int] NULL,
	[ProductGroupID] [int] NULL,
	[ProductName] [nvarchar](500) NULL,
	[QSD_FullName] [nvarchar](250) NULL,
	[QSD_Email] [varchar](50) NULL,
	[QSD_Phone] [nvarchar](50) NULL,
	[QSD_Address] [nvarchar](250) NULL,
	[NKD_FullName] [nvarchar](250) NULL,
	[NKD_Email] [varchar](50) NULL,
	[NKD_Phone] [nvarchar](50) NULL,
	[NKD_Address] [nvarchar](250) NULL,
	[LicenseNo] [nvarchar](50) NULL,
	[LicenseDate] [datetime] NULL,
	[Description] [ntext] NULL,
	[Note] [nvarchar](255) NULL,
	[isGovernment] [bit] NULL,
	[isActive] [bit] NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_Kiot] PRIMARY KEY CLUSTERED 
(
	[KiotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Market]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Market](
	[MarketID] [int] IDENTITY(1,1) NOT NULL,
	[MarketCode] [varchar](20) NULL,
	[MarketName] [nvarchar](250) NULL,
	[Area] [float] NULL,
	[MarketTypeID] [int] NULL,
	[ContactName] [nvarchar](100) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Description] [ntext] NULL,
	[Note] [nvarchar](255) NULL,
	[isActive] [bit] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_Market] PRIMARY KEY CLUSTERED 
(
	[MarketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Master]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Master](
	[MasterID] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [smallint] NOT NULL,
	[ParentID] [int] NULL,
	[Code] [varchar](20) NULL,
	[Name] [nvarchar](200) NULL,
	[Parameter1] [float] NULL,
	[Parameter2] [nvarchar](max) NULL,
	[Note] [ntext] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_Master] PRIMARY KEY CLUSTERED 
(
	[MasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Product]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](50) NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductGroupID] [int] NULL,
	[UnitID] [int] NULL,
	[Note] [nvarchar](255) NULL,
	[isReport] [bit] NULL,
	[isActive] [bit] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Regulation]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Regulation](
	[RegulationID] [int] IDENTITY(1,1) NOT NULL,
	[RegulationCode] [nvarchar](50) NULL,
	[RegulationName] [nvarchar](250) NULL,
	[RegulationTypeID] [int] NULL,
	[RegulationDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[Description] [ntext] NULL,
	[Note] [nvarchar](255) NULL,
	[isActive] [bit] NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_M_Regulation] PRIMARY KEY CLUSTERED 
(
	[RegulationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_AttachFile]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_AttachFile](
	[AttachFileID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](50) NULL,
	[ValueID] [int] NULL,
	[FileName] [nvarchar](100) NULL,
	[FileLink] [nvarchar](500) NULL,
	[Note] [nvarchar](200) NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_S_AttachFile] PRIMARY KEY CLUSTERED 
(
	[AttachFileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_FCM]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_FCM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[token] [nvarchar](max) NULL,
 CONSTRAINT [PK_S_FCM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_Function]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Function](
	[FunctionID] [int] NOT NULL,
	[ParentID] [int] NULL,
	[FunctionName] [nvarchar](100) NULL,
	[Url] [nvarchar](100) NULL,
	[Icon] [nvarchar](50) NULL,
	[SortOrder] [smallint] NULL,
	[IsActive] [bit] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_S_Function] PRIMARY KEY CLUSTERED 
(
	[FunctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_Group]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Group](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[GroupDesc] [nvarchar](200) NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_S_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_GroupRole]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_GroupRole](
	[GroupRoleID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NULL,
	[FunctionID] [int] NULL,
	[View] [bit] NULL,
	[Add] [bit] NULL,
	[Modify] [bit] NULL,
	[Delete] [bit] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_S_GroupRole] PRIMARY KEY CLUSTERED 
(
	[GroupRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_History]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_History](
	[HistoryID] [bigint] IDENTITY(1,1) NOT NULL,
	[HistoryDate] [datetime] NULL,
	[UserName] [varchar](20) NULL,
	[Action] [nvarchar](50) NULL,
	[TableName] [nvarchar](100) NULL,
	[Content] [nvarchar](max) NULL,
	[IP] [nvarchar](20) NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](20) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](20) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_S_History] PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_Parameter]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_Parameter](
	[ParameterID] [smallint] IDENTITY(1,1) NOT NULL,
	[ParameterType] [int] NULL,
	[KeyName] [nvarchar](100) NULL,
	[ValueNumber] [float] NULL,
	[ValueString] [nvarchar](max) NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_S_Parameter] PRIMARY KEY CLUSTERED 
(
	[ParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_User]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NULL,
	[EmployeeID] [int] NULL,
	[UserDesc] [nvarchar](200) NULL,
	[PassWord] [varchar](200) NULL,
	[IsSuper] [bit] NULL,
	[IsActive] [bit] NULL,
	[IsMobile] [bit] NULL,
	[Token] [nvarchar](max) NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_S_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[S_UserGroup]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_UserGroup](
	[UserGroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NULL,
	[UserID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_S_UserGroup] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ATTPLicense]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ATTPLicense](
	[ATTPLicenseID] [int] IDENTITY(1,1) NOT NULL,
	[LicenseNo] [nvarchar](50) NULL,
	[LicenseDate] [datetime] NULL,
	[Duration] [smallint] NULL,
	[ExpiredDate] [datetime] NULL,
	[HouseholdBusinessID] [int] NULL,
	[ProductGroupID] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[Note] [nvarchar](255) NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_ATTPLicense] PRIMARY KEY CLUSTERED 
(
	[ATTPLicenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Contract]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Contract](
	[ContractID] [int] IDENTITY(1,1) NOT NULL,
	[ContractNo] [nvarchar](50) NULL,
	[ContractDate] [datetime] NULL,
	[CustomerName] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Duration] [smallint] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Qty] [float] NULL,
	[Price] [float] NULL,
	[Amount] [float] NULL,
	[Description] [nvarchar](1000) NULL,
	[Note] [nvarchar](255) NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_Contract] PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ContractImplement]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ContractImplement](
	[ContractImplementID] [int] IDENTITY(1,1) NOT NULL,
	[ReportDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[ContractID] [int] NULL,
	[DocumentNo] [nvarchar](50) NULL,
	[ContractContentTypeID] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[Note] [nvarchar](255) NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_ContractImplement] PRIMARY KEY CLUSTERED 
(
	[ContractImplementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_DocumentImplement]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DocumentImplement](
	[DocumentImplementID] [int] IDENTITY(1,1) NOT NULL,
	[ReportDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[DocumentNo] [nvarchar](50) NULL,
	[DocumentTypeID] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[Note] [nvarchar](255) NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_DocumentImplement] PRIMARY KEY CLUSTERED 
(
	[DocumentImplementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Expense]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Expense](
	[ExpenseID] [int] IDENTITY(1,1) NOT NULL,
	[ExpenseCode] [nvarchar](30) NULL,
	[ExpenseDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[ExpenseTypeID] [int] NULL,
	[Amount] [float] NULL,
	[Reason] [nvarchar](500) NULL,
	[ReceiverName] [nvarchar](250) NULL,
	[Mobile] [nvarchar](40) NULL,
	[Address] [nvarchar](250) NULL,
	[Note] [nvarchar](255) NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_Expense] PRIMARY KEY CLUSTERED 
(
	[ExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Feedback]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[FeedbackTypeID] [int] NULL,
	[Title] [nvarchar](250) NULL,
	[HouseholdBusinessID] [int] NULL,
	[SenderName] [nvarchar](250) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Processing] [nvarchar](max) NULL,
	[ProcessingDate] [datetime] NULL,
	[StatusID] [smallint] NULL,
	[Note] [nvarchar](255) NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_HealthCertification]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_HealthCertification](
	[HealthCertificationID] [int] IDENTITY(1,1) NOT NULL,
	[HCCode] [nvarchar](50) NULL,
	[HCDate] [datetime] NULL,
	[HouseholdBusinessID] [int] NULL,
	[Duration] [smallint] NULL,
	[ExpiredDate] [datetime] NULL,
	[Description] [nvarchar](1000) NULL,
	[StatusID] [smallint] NULL,
	[Note] [nvarchar](255) NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_HealthCertification] PRIMARY KEY CLUSTERED 
(
	[HealthCertificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_KiotForRent]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_KiotForRent](
	[KiotForRentID] [int] IDENTITY(1,1) NOT NULL,
	[RentCode] [nvarchar](30) NULL,
	[RentDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[KiotID] [int] NULL,
	[HouseholdBusinessID] [int] NULL,
	[ProductGroupID] [int] NULL,
	[Size] [nvarchar](50) NULL,
	[Area] [float] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Qty] [float] NULL,
	[Price] [float] NULL,
	[Amount] [float] NULL,
	[StatusID] [smallint] NULL,
	[StatusDate] [datetime] NULL,
	[Description] [nvarchar](1000) NULL,
	[Note] [nvarchar](255) NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_KiotForRent] PRIMARY KEY CLUSTERED 
(
	[KiotForRentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_KiotTransfer]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_KiotTransfer](
	[KiotTransferID] [int] IDENTITY(1,1) NOT NULL,
	[TransferDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[KiotID] [int] NULL,
	[LicenseNo] [nvarchar](50) NULL,
	[LicenseDate] [datetime] NULL,
	[Old_FullName] [nvarchar](250) NULL,
	[Old_IDNo] [nvarchar](30) NULL,
	[Old_Phone] [nvarchar](50) NULL,
	[Old_Address] [nvarchar](250) NULL,
	[New_FullName] [nvarchar](250) NULL,
	[New_IDNo] [nvarchar](30) NULL,
	[New_Phone] [nvarchar](50) NULL,
	[New_Address] [nvarchar](250) NULL,
	[Reason] [nvarchar](300) NULL,
	[Note] [nvarchar](255) NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_KiotTransfer] PRIMARY KEY CLUSTERED 
(
	[KiotTransferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_MarketActivity]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_MarketActivity](
	[MarketActivityID] [int] IDENTITY(1,1) NOT NULL,
	[SendDate] [datetime] NULL,
	[SenderID] [int] NULL,
	[MarketActivityTypeID] [int] NULL,
	[Title] [nvarchar](500) NULL,
	[Summary] [nvarchar](max) NULL,
	[Description] [ntext] NULL,
	[Note] [nvarchar](255) NULL,
	[isMarketActivity] [bit] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_MarketActivity] PRIMARY KEY CLUSTERED 
(
	[MarketActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Price]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Price](
	[PriceID] [int] IDENTITY(1,1) NOT NULL,
	[PriceDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[Note] [nvarchar](255) NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_P_Price] PRIMARY KEY CLUSTERED 
(
	[PriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PriceDetail]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PriceDetail](
	[PriceDetailID] [int] IDENTITY(1,1) NOT NULL,
	[PriceID] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [float] NULL,
	[Note] [nvarchar](255) NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_P_PriceDetail] PRIMARY KEY CLUSTERED 
(
	[PriceDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Revenue]    Script Date: 1/22/2022 10:57:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Revenue](
	[RevenueID] [int] IDENTITY(1,1) NOT NULL,
	[RevenueCode] [nvarchar](30) NULL,
	[RevenueDate] [datetime] NULL,
	[EmployeeID] [int] NULL,
	[RevenueTypeID] [int] NULL,
	[Amount] [float] NULL,
	[Reason] [nvarchar](500) NULL,
	[HouseholdBusinessID] [int] NULL,
	[KiotID] [int] NULL,
	[CustomerName] [nvarchar](250) NULL,
	[Mobile] [nvarchar](40) NULL,
	[Address] [nvarchar](250) NULL,
	[Note] [nvarchar](255) NULL,
	[isRevenue] [bit] NULL,
	[MarketID] [int] NULL,
	[CompanyID] [int] NULL,
	[CreateUser] [varchar](15) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUser] [varchar](15) NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_T_Revenue] PRIMARY KEY CLUSTERED 
(
	[RevenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[M_Company] ON 

INSERT [dbo].[M_Company] ([CompanyID], [CompanyCode], [CompanyName], [ContactName], [Email], [Phone], [Mobile], [Address], [Note], [isMarket], [isActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (1, N'01', N'Phòng Kinh Tế', N'', N'', N'', N'', N'', N'', 0, 1, NULL, NULL, N'admin', CAST(N'2021-12-15T15:00:35.700' AS DateTime))
INSERT [dbo].[M_Company] ([CompanyID], [CompanyCode], [CompanyName], [ContactName], [Email], [Phone], [Mobile], [Address], [Note], [isMarket], [isActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (2, N'02', N'BQL Chợ Mới', N'', N'', N'', N'', N'Đường Trần Hữu Trang, phường 10, quận Phú Nhuận', N'', 1, 1, NULL, NULL, N'admin', CAST(N'2021-12-15T15:00:11.517' AS DateTime))
INSERT [dbo].[M_Company] ([CompanyID], [CompanyCode], [CompanyName], [ContactName], [Email], [Phone], [Mobile], [Address], [Note], [isMarket], [isActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (3, N'03', N'BQL Chợ Nguyễn Đình Chiểu', N'', N'', N'', N'', N'Đường Nguyễn Kiệm, phường 4, quận Phú Nhuận', N'', 1, 1, NULL, NULL, N'admin', CAST(N'2021-12-15T15:00:21.790' AS DateTime))
INSERT [dbo].[M_Company] ([CompanyID], [CompanyCode], [CompanyName], [ContactName], [Email], [Phone], [Mobile], [Address], [Note], [isMarket], [isActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (4, N'04', N'BQL Chợ Ga - Trần Khắc Chân', N'', N'', N'', N'', N'67 Trần Khắc Chân, phường 9, quận Phú Nhuận', N'', 1, 1, NULL, NULL, N'admin', CAST(N'2021-12-15T15:00:48.887' AS DateTime))
INSERT [dbo].[M_Company] ([CompanyID], [CompanyCode], [CompanyName], [ContactName], [Email], [Phone], [Mobile], [Address], [Note], [isMarket], [isActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (5, N'05', N'BQL Chợ Trần Hữu Trang', N'', N'', N'', N'', N'84C Trần Hữu Trang, phường 10, quận Phú Nhuận', N'', 0, 1, NULL, NULL, N'admin', CAST(N'2021-12-15T15:00:57.473' AS DateTime))
SET IDENTITY_INSERT [dbo].[M_Company] OFF
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (1, 1, N'Nam', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (2, 1, N'Nữ', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (3, 1, N'Khác', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (4, 2, N'Đang hoạt động', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (5, 2, N'Tạm ngừng hoạt động', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (6, 2, N'Ngừng hoạt động', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (7, 3, N'Tiếp nhận', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (8, 3, N'Đang xử lý', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (9, 3, N'Đã xử lý', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (10, 4, N'Bình thường', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (11, 4, N'Tốt', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Constant] ([ConstantID], [ConstantType], [ConstantName], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (12, 4, N'Khác', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[M_Employee] ON 

INSERT [dbo].[M_Employee] ([EmployeeID], [EmployeeCode], [EmployeeName], [DepartmentID], [IDNo], [DOB], [GenderID], [Email], [Phone], [Mobile], [Address], [Note], [isActive], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (1, N'01', N'administrator', 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, N'admin', CAST(N'2012-11-30T11:18:30.000' AS DateTime), N'admin', CAST(N'2021-10-18T21:08:33.847' AS DateTime))
INSERT [dbo].[M_Employee] ([EmployeeID], [EmployeeCode], [EmployeeName], [DepartmentID], [IDNo], [DOB], [GenderID], [Email], [Phone], [Mobile], [Address], [Note], [isActive], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (2, N'02', N'Ngô Hữu Thạch', 2, NULL, NULL, 1, NULL, NULL, N'0908064643', NULL, NULL, 1, 1, N'admin', CAST(N'2019-07-24T15:03:47.110' AS DateTime), N'admin', CAST(N'2019-07-24T15:28:22.710' AS DateTime))
INSERT [dbo].[M_Employee] ([EmployeeID], [EmployeeCode], [EmployeeName], [DepartmentID], [IDNo], [DOB], [GenderID], [Email], [Phone], [Mobile], [Address], [Note], [isActive], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (3, N'03', N'Trần Đức Thái', 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 2, N'admin', CAST(N'2021-10-03T10:49:54.797' AS DateTime), N'admin', CAST(N'2021-10-18T21:09:26.887' AS DateTime))
INSERT [dbo].[M_Employee] ([EmployeeID], [EmployeeCode], [EmployeeName], [DepartmentID], [IDNo], [DOB], [GenderID], [Email], [Phone], [Mobile], [Address], [Note], [isActive], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (4, N'04', N'Nguyễn Văn A', 4, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 2, N'admin', CAST(N'2021-10-03T15:15:37.330' AS DateTime), N'admin', CAST(N'2021-10-18T21:08:58.963' AS DateTime))
SET IDENTITY_INSERT [dbo].[M_Employee] OFF
SET IDENTITY_INSERT [dbo].[M_Market] ON 

INSERT [dbo].[M_Market] ([MarketID], [MarketCode], [MarketName], [Area], [MarketTypeID], [ContactName], [Email], [Phone], [Mobile], [Address], [Description], [Note], [isActive], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (1, N'01', N'Chợ Mới', 0, 1, N'', N'', N'', N'', N'Đường Trần Hữu Trang, phường 10, quận Phú Nhuận', N'', N'', 1, 0, N'admin', CAST(N'2021-12-15T15:01:44.067' AS DateTime), NULL, NULL)
INSERT [dbo].[M_Market] ([MarketID], [MarketCode], [MarketName], [Area], [MarketTypeID], [ContactName], [Email], [Phone], [Mobile], [Address], [Description], [Note], [isActive], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (2, N'02', N'Chợ Nguyễn Đình Chiểu', 0, 1, N'', N'', N'', N'', N'Đường Nguyễn Kiệm, phường 4, quận Phú Nhuận', N'', N'', 1, 0, N'admin', CAST(N'2021-12-15T15:02:34.813' AS DateTime), NULL, NULL)
INSERT [dbo].[M_Market] ([MarketID], [MarketCode], [MarketName], [Area], [MarketTypeID], [ContactName], [Email], [Phone], [Mobile], [Address], [Description], [Note], [isActive], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (3, N'03', N'Chợ Ga - Trần Khắc Chân', 0, 1, N'', N'', N'', N'', N'67 Trần Khắc Chân, phường 9, quận Phú Nhuận', N'', N'', 1, 0, N'admin', CAST(N'2021-12-15T15:04:53.657' AS DateTime), NULL, NULL)
INSERT [dbo].[M_Market] ([MarketID], [MarketCode], [MarketName], [Area], [MarketTypeID], [ContactName], [Email], [Phone], [Mobile], [Address], [Description], [Note], [isActive], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (4, N'04', N'Chợ Trần Hữu Trang', 0, 1, N'', N'', N'', N'', N'84C Trần Hữu Trang, phường 10, quận Phú Nhuận', N'', N'', 1, 0, N'admin', CAST(N'2021-12-15T15:05:14.270' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[M_Market] OFF
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (1, 0, N'Dashboard', N'/Home', N'fa fa-home', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (2, 0, N'Thông tin chung', NULL, N'fa fa-info-circle', 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (3, 0, N'Điểm kinh doanh', NULL, N'fa fa-map-marker', 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (4, 0, N'Hàng hóa thiết yếu & SCT', NULL, N'fa fa-compass', 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (5, 0, N'Công tác quản lý chợ', NULL, N'fa fa-tasks', 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (6, 0, N'Báo cáo', NULL, N'fa fa-chart-pie', 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (7, 0, N'Cảnh báo', NULL, N'fa fa-exclamation-circle', 7, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (8, 0, N'Hệ thống', NULL, N'fa fa-cog', 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (9, 2, N'Chợ', N'/Master/Market', N'fa fa-angle-right', 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (10, 2, N'Đơn vị quản lý', N'/Master/Company', N'fa fa-angle-right', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (11, 2, N'Khu vực', N'/Master/Region', N'fa fa-angle-right', 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (12, 2, N'Điểm kinh doanh', N'/Master/Kiot', N'fa fa-angle-right', 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (13, 2, N'Nội quy chợ', N'/Master/Regulation', N'fa fa-angle-right', 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (14, 8, N'Người dùng', N'/System/Users', N'fa fa-angle-right', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (15, 8, N'Nhóm người dùng', N'/System/Groups', N'fa fa-angle-right', 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (16, 8, N'Phân quyền chức năng', N'/System/Decentralization', N'fa fa-angle-right', 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (17, 8, N'Cấu hình hệ thống', N'/System/Config', N'fa fa-angle-right', 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (18, 8, N'Nhật ký hệ thống', N'/System/History', N'fa fa-angle-right', 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (19, 8, N'Backup dữ liệu', N'/System/History', N'fa fa-angle-right', 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (20, 2, N'Nhân viên', N'/Master/Employee', N'fa fa-angle-right', 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (21, 3, N'Thương nhân', N'/Master/HouseholdBusiness', N'fa fa-angle-right', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (22, 3, N'Ngành hàng', N'/Master/ProductGroup', N'fa fa-angle-right', 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (23, 3, N'Mặt hàng', N'/Master/Product', N'fa fa-angle-right', 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (24, 3, N'Đơn vị tính', N'/Master/Unit', N'fa fa-angle-right', 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (25, 3, N'Loại khoản thu', N'/Master/RevenueType', N'fa fa-angle-right', 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (26, 3, N'Loại khoản chi', N'/Master/ExpenseType', N'fa fa-angle-right', 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (27, 3, N'Loại phản ánh', N'/Master/FeedbackType', N'fa fa-angle-right', 7, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (28, 3, N'Sang nhượng điểm kinh doanh', N'/Manage/KiotTransfer', N'fa fa-angle-right', 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (29, 3, N'Hợp đồng thuê điểm kinh doanh', N'/Manage/KiotForRent', N'fa fa-angle-right', 9, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (30, 3, N'Các khoản thu', N'/Manage/Revenue', N'fa fa-angle-right', 10, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (31, 3, N'Các khoản chi', N'/Manage/Expense', N'fa fa-angle-right', 11, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (32, 3, N'Phản ánh của thương nhân', N'/Manage/Feedback', N'fa fa-angle-right', 12, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (33, 3, N'QRCode', N'/Report/QRCode', N'fa fa-angle-right', 13, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (34, 3, N'Giấy phép an toàn thực phẩm', N'/Manage/ATTPLicense', N'fa fa-angle-right', 14, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (35, 3, N'Báo cáo doanh thu hộ kinh doanh', N'/Manage/', N'fa fa-angle-right', 15, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (36, 3, N'Giấy khám sức khỏe thương nhân', N'/Manage/HealthCertification', N'fa fa-angle-right', 16, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (37, 4, N'Giá hàng hóa thiết yếu', N'/Manage/Price', N'fa fa-angle-right', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (38, 4, N'So sánh giá hàng hóa thiết yếu', N'/Manage/', N'fa fa-angle-right', 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (39, 4, N'Báo cáo tình hình chung', N'/Manage/', N'fa fa-angle-right', 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (40, 4, N'Báo cáo tình hình kinh doanh', N'/Manage/', N'fa fa-angle-right', 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (41, 4, N'Báo cáo tình hình hoạt động chợ ', N'/Manage/', N'fa fa-angle-right', 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (42, 5, N'Hợp đồng giao thầu chợ', N'/Manage/Contract', N'fa fa-angle-right', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (43, 5, N'Thực hiện hợp đồng thầu', N'/Manage/ContractImplement', N'fa fa-angle-right', 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (44, 5, N'Thực hiện các văn bản', N'/Manage/DocumentImplement', N'fa fa-angle-right', 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (45, 5, N'Loại nội dung hợp đồng', N'/Master/ContractContentType', N'fa fa-angle-right', 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (46, 5, N'Loại văn bản triển khai', N'/Master/DocumentType', N'fa fa-angle-right', 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (47, 6, N'Báo cáo tình hình chung', N'/Manage/', N'fa fa-angle-right', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (48, 6, N'Báo cáo tổng hợp thu - chi', N'/Report/ERSummary', N'fa fa-angle-right', 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (49, 6, N'Báo cáo doanh thu hợp đồng thuê', N'/Report/HBSummary', N'fa fa-angle-right', 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (50, 6, N'Báo cáo giấy phép ATTP', N'/Manage/', N'fa fa-angle-right', 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (51, 6, N'Báo cáo giấy khám sức khỏe', N'/Manage/', N'fa fa-angle-right', 5, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (52, 6, N'Báo cáo hợp đồng giao thầu chợ', N'/Manage/', N'fa fa-angle-right', 6, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (53, 6, N'Báo cáo thực hiện hợp đồng thầu', N'/Manage/', N'fa fa-angle-right', 7, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (54, 6, N'Báo cáo thực hiện các văn bản', N'/Manage/', N'fa fa-angle-right', 8, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (55, 6, N'Báo cáo tổng hợp phản ánh', N'/Report/FeedbackSummary', N'fa fa-angle-right', 9, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (56, 6, N'Báo cáo 10', N'', N'fa fa-angle-right', 10, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (57, 6, N'Báo cáo 11', N'', N'fa fa-angle-right', 11, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (58, 6, N'Báo cáo 12', N'', N'fa fa-angle-right', 12, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (59, 7, N'Danh sách hợp đồng sắp hết hạn', N'/Manage/KiotDueSoon', N'fa fa-angle-right', 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (60, 7, N'Danh sách GCN ĐKKD sắp hết hạn', N'/Manage/', N'fa fa-angle-right', 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (61, 7, N'Danh sách giấy phép ATTP sắp hết hạn', N'/Manage/', N'fa fa-angle-right', 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (62, 2, N'Loại chợ', N'/Master/MarketType', N'fa fa-angle-right', 7, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[S_Function] ([FunctionID], [ParentID], [FunctionName], [Url], [Icon], [SortOrder], [IsActive], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (63, 2, N'Loại nội quy', N'/Master/RegulationType', N'fa fa-angle-right', 8, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[S_User] ON 

INSERT [dbo].[S_User] ([UserID], [UserName], [EmployeeID], [UserDesc], [PassWord], [IsSuper], [IsActive], [IsMobile], [Token], [CompanyID], [CreateUser], [CreateDate], [UpdateUser], [UpdateDate]) VALUES (1, N'admin', 1, NULL, N'e36a688e4838c0f47f7eca369706d43b', 1, 1, 1, NULL, 0, N'admin', CAST(N'2012-11-30T11:18:30.000' AS DateTime), N'admin', CAST(N'2012-11-30T11:18:30.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[S_User] OFF
