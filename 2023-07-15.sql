USE [LabDBd]
GO

/****** Object:  Table [dbo].[invs_countingunit]    Script Date: 17/07/2023 10:00:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[invs_countingunit](
	[frindx] [int] NOT NULL,
	[unittext] [nvarchar](20) NULL,
	[IsActive] [varchar](1) NULL,
	[saveby] [nvarchar](50) NULL,
	[stmdate] [date] NULL,
	[stmtime] [nvarchar](8) NULL,
 CONSTRAINT [PK_invs_countingunit] PRIMARY KEY CLUSTERED 
(
	[frindx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[invs_product]    Script Date: 17/07/2023 10:00:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[invs_product](
	[ProductCode] [nvarchar](10) NOT NULL,
	[ProductName] [nvarchar](80) NULL,
	[ProductTypeCode] [nvarchar](10) NULL,
	[ProductBoxCode] [nvarchar](30) NULL,
	[PackageSize] [nvarchar](30) NULL,
	[BrandName] [nvarchar](30) NULL,
	[Description] [nvarchar](120) NULL,
	[SearchKeyWord] [nvarchar](150) NULL,
	[Price_Package] [float] NULL,
	[Price_Unit] [float] NULL,
	[VendorCode] [nvarchar](8) NULL,
	[PlaceLocation] [nvarchar](50) NULL,
	[CategoryNo] [nvarchar](30) NULL,
	[BaseOfPackageMeasure] [nvarchar](20) NULL,
	[StockUnit] [nvarchar](20) NULL,
	[MinimumStock] [float] NULL,
	[MinimumStockUnit] [nvarchar](20) NULL,
	[IsActive] [varchar](1) NULL,
	[StatusStock] [int] NULL,
	[saveby] [nvarchar](50) NULL,
	[stmdate] [date] NULL,
	[stmtime] [nvarchar](8) NULL,
 CONSTRAINT [PK_invs_product] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[invs_producttype]    Script Date: 17/07/2023 10:00:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[invs_producttype](
	[ProductTypeCode] [nvarchar](10) NOT NULL,
	[ProductTypeName] [nvarchar](50) NULL,
	[IsActive] [varchar](1) NULL,
	[SortIndex] [int] NULL,
	[saveby] [nvarchar](50) NULL,
	[stmdate] [date] NULL,
	[stmtime] [nvarchar](8) NULL,
 CONSTRAINT [PK_invs_producttype] PRIMARY KEY CLUSTERED 
(
	[ProductTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[invs_vendor]    Script Date: 17/07/2023 10:00:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[invs_vendor](
	[VendorCode] [nvarchar](8) NOT NULL,
	[NameEN] [nvarchar](80) NULL,
	[NameTH] [nvarchar](80) NULL,
	[Country] [nvarchar](150) NULL,
	[AddressNo] [nvarchar](150) NULL,
	[ProvinceCode] [nvarchar](3) NULL,
	[DistrinctCode] [nvarchar](10) NULL,
	[SubDistrictCode] [nvarchar](10) NULL,
	[PostCode] [nvarchar](5) NULL,
	[ForeignAddress] [nvarchar](180) NULL,
	[TelNo] [varchar](50) NULL,
	[Email] [nvarchar](80) NULL,
	[LineId] [nvarchar](80) NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactTelNo] [varchar](50) NULL,
	[IsActive] [varchar](1) NULL,
	[saveby] [nvarchar](50) NULL,
	[stmdate] [date] NULL,
	[stmtime] [nvarchar](8) NULL,
 CONSTRAINT [PK_invs_vendor] PRIMARY KEY CLUSTERED 
(
	[VendorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[invs_countingunit] ADD  CONSTRAINT [DF_invs_countingunit_SortIndex]  DEFAULT ((0)) FOR [frindx]
GO

ALTER TABLE [dbo].[invs_product] ADD  CONSTRAINT [DF_invs_product_Price_Package]  DEFAULT ((0)) FOR [Price_Package]
GO

ALTER TABLE [dbo].[invs_product] ADD  CONSTRAINT [DF_invs_product_Price_Unit]  DEFAULT ((0)) FOR [Price_Unit]
GO

ALTER TABLE [dbo].[invs_product] ADD  CONSTRAINT [DF_invs_product_Status]  DEFAULT ((0)) FOR [StatusStock]
GO

ALTER TABLE [dbo].[invs_producttype] ADD  CONSTRAINT [DF_invs_producttype_SortIndex]  DEFAULT ((0)) FOR [SortIndex]
GO


