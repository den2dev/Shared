USE [LabDBd]
GO

/****** Object:  Table [dbo].[lab_result_ucb_1detail_processing]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_1detail_processing](
	[agr_no] [nvarchar](50) NOT NULL,
	[bag] [nvarchar](1) NOT NULL,
	[ucb_volume] [float] NULL,
	[rbc_reagent_volume] [float] NULL,
	[rbc_reagent_type] [nvarchar](50) NULL,
	[pre_process_blood_volume] [float] NULL,
	[separation_method] [nvarchar](50) NULL,
 CONSTRAINT [PK_lab_result_ucb_1processing] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC,
	[bag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_1detail_totalstemcellunit]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_1detail_totalstemcellunit](
	[agr_no] [nvarchar](50) NOT NULL,
	[bag] [nvarchar](1) NOT NULL,
	[post_sample_volume] [float] NULL,
	[cryoprotectant_volume] [float] NULL,
	[cryoprotectant_type] [nvarchar](50) NULL,
	[total_stemcell_volume] [float] NULL,
	[storage_container] [nvarchar](20) NULL,
	[storage_position] [nvarchar](150) NULL,
 CONSTRAINT [PK_lab_result_ucb_1totalstemcellunit] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC,
	[bag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_1master]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_1master](
	[agr_no] [nvarchar](50) NOT NULL,
	[Total_Unit_Bag] [int] NULL,
	[Total_StemCell_Unit] [int] NULL,
	[Lab_Staff] [nvarchar](150) NULL,
	[save_by] [nvarchar](50) NULL,
	[save_date] [date] NULL,
	[save_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_lab_result_ucb_0result] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_2cellcount_detail]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_2cellcount_detail](
	[agr_no] [nvarchar](50) NOT NULL,
	[bag] [nvarchar](1) NOT NULL,
	[pre_volume] [float] NULL,
	[post_volume] [float] NULL,
	[pre_NCC] [float] NULL,
	[post_NCC] [float] NULL,
	[pre_TNC] [float] NULL,
	[post_TNC] [float] NULL,
	[pre_MNC] [float] NULL,
	[post_MNC] [float] NULL,
	[pre_TMC] [float] NULL,
	[post_TMC] [float] NULL,
	[pre_RBC] [float] NULL,
	[post_RBC] [float] NULL,
	[pre_TRC] [float] NULL,
	[post_TRC] [float] NULL,
	[recoveryrate_TNC] [float] NULL,
	[recoveryrate_TMC] [float] NULL,
	[recoveryrate_TRC] [float] NULL,
	[recoveryrate_RBC] [float] NULL,
	[total_TNC] [float] NULL,
	[total_TMC] [float] NULL,
	[total_TRC] [float] NULL,
 CONSTRAINT [PK_lab_result_ucb_2cellcount_detail] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC,
	[bag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_2cellcount_master]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_2cellcount_master](
	[agr_no] [nvarchar](50) NOT NULL,
	[lab_staff] [nvarchar](150) NOT NULL,
	[tools] [nvarchar](150) NULL,
	[save_by] [nvarchar](50) NULL,
	[save_date] [date] NULL,
	[save_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_lab_result_ucb_2cellcount_master] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_3cd34_enumeration_detail]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_3cd34_enumeration_detail](
	[agr_no] [nvarchar](50) NOT NULL,
	[bag] [nvarchar](1) NOT NULL,
	[pre_cd34] [float] NULL,
	[post_cd34] [float] NULL,
	[pre_viablity_NCC] [float] NULL,
	[post_viablity_NCC] [float] NULL,
	[pre_viablity_CD34] [float] NULL,
	[post_viablity_CD34] [float] NULL,
	[pre_CD14] [float] NULL,
	[post_CD14] [float] NULL,
 CONSTRAINT [PK_lab_result_ucb_3cd34_enumeration_detail] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC,
	[bag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_3cd34_enumeration_master]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_3cd34_enumeration_master](
	[agr_no] [nvarchar](50) NOT NULL,
	[lab_staff] [nvarchar](150) NOT NULL,
	[tools] [nvarchar](150) NULL,
	[save_by] [nvarchar](50) NULL,
	[save_date] [date] NULL,
	[save_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_lab_result_ucb_3cd34_enumeration_master] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_4nRBC_detail]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_4nRBC_detail](
	[agr_no] [nvarchar](50) NOT NULL,
	[bag] [nvarchar](1) NOT NULL,
	[pre_nRBC] [float] NULL,
	[post_nRBC] [float] NULL,
 CONSTRAINT [PK_lab_result_ucb_4nRBC_detail] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC,
	[bag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_4nRBC_master]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_4nRBC_master](
	[agr_no] [nvarchar](50) NOT NULL,
	[lab_staff] [nvarchar](150) NOT NULL,
	[tools] [nvarchar](150) NULL,
	[save_by] [nvarchar](50) NULL,
	[save_date] [date] NULL,
	[save_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_lab_result_ucb_4nRBC_count_master] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_5viability_detail]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_5viability_detail](
	[agr_no] [nvarchar](50) NOT NULL,
	[bag] [nvarchar](1) NOT NULL,
	[pre_viability] [float] NULL,
	[post_viability] [float] NULL,
 CONSTRAINT [PK_lab_result_ucb_5viability_detail] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC,
	[bag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_5viability_master]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_5viability_master](
	[agr_no] [nvarchar](50) NOT NULL,
	[lab_staff] [nvarchar](150) NOT NULL,
	[tools] [nvarchar](150) NULL,
	[save_by] [nvarchar](50) NULL,
	[save_date] [date] NULL,
	[save_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_lab_result_ucb_5viability_master] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_6sterilitytest_detail]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_6sterilitytest_detail](
	[agr_no] [nvarchar](50) NOT NULL,
	[item_no] [int] NOT NULL,
	[bag] [nvarchar](1) NOT NULL,
	[test_sample] [nvarchar](80) NULL,
	[test_type] [nvarchar](50) NULL,
	[test_result] [nvarchar](50) NULL,
	[test_result_detail] [nvarchar](150) NULL,
 CONSTRAINT [PK_lab_result_ucb_6sterilitytest_detail] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC,
	[item_no] ASC,
	[bag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_6sterilitytest_master]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_6sterilitytest_master](
	[agr_no] [nvarchar](50) NOT NULL,
	[item_no] [int] NOT NULL,
	[lab_staff] [nvarchar](150) NOT NULL,
	[save_by] [nvarchar](50) NULL,
	[save_date] [date] NULL,
	[save_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_lab_result_ucb_6sterilitytest_master] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC,
	[item_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_7bloodgrouping_detail]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_7bloodgrouping_detail](
	[agr_no] [nvarchar](50) NOT NULL,
	[bag] [nvarchar](1) NOT NULL,
	[test_gel_or_tube] [nvarchar](1) NULL,
	[ABO_cell_grouping] [nvarchar](20) NULL,
	[Rh_cell_grouping] [nvarchar](20) NULL,
 CONSTRAINT [PK_lab_result_ucb_7bloodgrouping_detail] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC,
	[bag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab_result_ucb_7bloodgrouping_master]    Script Date: 14/02/2023 11:54:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_result_ucb_7bloodgrouping_master](
	[agr_no] [nvarchar](50) NOT NULL,
	[lab_staff] [nvarchar](150) NOT NULL,
	[save_by] [nvarchar](50) NULL,
	[save_date] [date] NULL,
	[save_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_lab_result_ucb_7bloodgrouping_master] PRIMARY KEY CLUSTERED 
(
	[agr_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[lab_result_ucb_1detail_processing] ADD  CONSTRAINT [DF_Table_1_Total_Unit_Bag]  DEFAULT ((0)) FOR [bag]
GO

ALTER TABLE [dbo].[lab_result_ucb_1detail_processing] ADD  CONSTRAINT [DF_Table_1_ucb_volumn_ml]  DEFAULT ((0)) FOR [ucb_volume]
GO

ALTER TABLE [dbo].[lab_result_ucb_1detail_processing] ADD  CONSTRAINT [DF_Table_1_ucb_volumn_ml1]  DEFAULT ((0)) FOR [rbc_reagent_volume]
GO

ALTER TABLE [dbo].[lab_result_ucb_1detail_processing] ADD  CONSTRAINT [DF_Table_1_ucb_volumn_ml2]  DEFAULT ((0)) FOR [pre_process_blood_volume]
GO

ALTER TABLE [dbo].[lab_result_ucb_1detail_totalstemcellunit] ADD  CONSTRAINT [DF_lab_result_ucb_1totalstemcellunit_bag]  DEFAULT ((0)) FOR [bag]
GO

ALTER TABLE [dbo].[lab_result_ucb_1detail_totalstemcellunit] ADD  CONSTRAINT [DF_Table_1_ucb_volume]  DEFAULT ((0)) FOR [post_sample_volume]
GO

ALTER TABLE [dbo].[lab_result_ucb_1detail_totalstemcellunit] ADD  CONSTRAINT [DF_Table_1_rbc_reagent_volume]  DEFAULT ((0)) FOR [cryoprotectant_volume]
GO

ALTER TABLE [dbo].[lab_result_ucb_1detail_totalstemcellunit] ADD  CONSTRAINT [DF_Table_1_pre_process_blood_volume]  DEFAULT ((0)) FOR [total_stemcell_volume]
GO

ALTER TABLE [dbo].[lab_result_ucb_1master] ADD  CONSTRAINT [DF_lab_result_ucb_0result_Total_Unit_Bag]  DEFAULT ((0)) FOR [Total_Unit_Bag]
GO

ALTER TABLE [dbo].[lab_result_ucb_1master] ADD  CONSTRAINT [DF_lab_result_ucb_0result_Total_StemCell_Unit]  DEFAULT ((0)) FOR [Total_StemCell_Unit]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_bag]  DEFAULT ((0)) FOR [bag]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_Table_1_post_sample_volume]  DEFAULT ((0)) FOR [pre_volume]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_Table_1_cryoprotectant_volume]  DEFAULT ((0)) FOR [post_volume]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_pre_ncc]  DEFAULT ((0)) FOR [pre_NCC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_Table_1_total_stemcell_volume]  DEFAULT ((0)) FOR [post_NCC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_Table_1_storage_container]  DEFAULT ((0)) FOR [pre_TNC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_Table_1_storage_position]  DEFAULT ((0)) FOR [post_TNC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_Table_1_detail]  DEFAULT ((0)) FOR [pre_MNC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_Table_1_pre_mnc1]  DEFAULT ((0)) FOR [post_MNC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_pre_mnc1]  DEFAULT ((0)) FOR [pre_TMC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_post_mnc1]  DEFAULT ((0)) FOR [post_TMC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_pre_mnc2]  DEFAULT ((0)) FOR [pre_RBC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_post_mnc2]  DEFAULT ((0)) FOR [post_RBC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_pre_mnc3]  DEFAULT ((0)) FOR [pre_TRC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_post_mnc3]  DEFAULT ((0)) FOR [post_TRC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_recoveryrate_TNC]  DEFAULT ((0)) FOR [recoveryrate_TNC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_recoveryrate_TNC1]  DEFAULT ((0)) FOR [recoveryrate_TMC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_recoveryrate_TNC2]  DEFAULT ((0)) FOR [recoveryrate_TRC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_recoveryrate_TNC3]  DEFAULT ((0)) FOR [recoveryrate_RBC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_recoveryrate_TRC1]  DEFAULT ((0)) FOR [total_TNC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_total_TNC1]  DEFAULT ((0)) FOR [total_TMC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_detail] ADD  CONSTRAINT [DF_lab_result_ucb_2cellcount_detail_total_TNC1_1]  DEFAULT ((0)) FOR [total_TRC]
GO

ALTER TABLE [dbo].[lab_result_ucb_2cellcount_master] ADD  CONSTRAINT [DF_Table_2_bag]  DEFAULT ((0)) FOR [lab_staff]
GO

ALTER TABLE [dbo].[lab_result_ucb_3cd34_enumeration_detail] ADD  CONSTRAINT [DF_lab_result_ucb_3cd34_enumeration_detail_bag]  DEFAULT ((0)) FOR [bag]
GO

ALTER TABLE [dbo].[lab_result_ucb_3cd34_enumeration_detail] ADD  CONSTRAINT [DF_Table_1_pre_volume]  DEFAULT ((0)) FOR [pre_cd34]
GO

ALTER TABLE [dbo].[lab_result_ucb_3cd34_enumeration_detail] ADD  CONSTRAINT [DF_Table_1_post_volume]  DEFAULT ((0)) FOR [post_cd34]
GO

ALTER TABLE [dbo].[lab_result_ucb_3cd34_enumeration_detail] ADD  CONSTRAINT [DF_Table_1_pre_NCC]  DEFAULT ((0)) FOR [pre_viablity_NCC]
GO

ALTER TABLE [dbo].[lab_result_ucb_3cd34_enumeration_detail] ADD  CONSTRAINT [DF_Table_1_post_NCC]  DEFAULT ((0)) FOR [post_viablity_NCC]
GO

ALTER TABLE [dbo].[lab_result_ucb_3cd34_enumeration_detail] ADD  CONSTRAINT [DF_Table_1_pre_TNC]  DEFAULT ((0)) FOR [pre_viablity_CD34]
GO

ALTER TABLE [dbo].[lab_result_ucb_3cd34_enumeration_detail] ADD  CONSTRAINT [DF_Table_1_post_TNC]  DEFAULT ((0)) FOR [post_viablity_CD34]
GO

ALTER TABLE [dbo].[lab_result_ucb_3cd34_enumeration_detail] ADD  CONSTRAINT [DF_Table_1_pre_MNC]  DEFAULT ((0)) FOR [pre_CD14]
GO

ALTER TABLE [dbo].[lab_result_ucb_3cd34_enumeration_detail] ADD  CONSTRAINT [DF_Table_1_post_MNC]  DEFAULT ((0)) FOR [post_CD14]
GO

ALTER TABLE [dbo].[lab_result_ucb_3cd34_enumeration_master] ADD  CONSTRAINT [DF_lab_result_ucb_3cd34_enumeration_master_lab_staff]  DEFAULT ((0)) FOR [lab_staff]
GO

ALTER TABLE [dbo].[lab_result_ucb_4nRBC_detail] ADD  CONSTRAINT [DF_lab_result_ucb_4nRBC_detail_bag]  DEFAULT ((0)) FOR [bag]
GO

ALTER TABLE [dbo].[lab_result_ucb_4nRBC_detail] ADD  CONSTRAINT [DF_Table_1_pre_cd34]  DEFAULT ((0)) FOR [pre_nRBC]
GO

ALTER TABLE [dbo].[lab_result_ucb_4nRBC_detail] ADD  CONSTRAINT [DF_Table_1_post_cd34]  DEFAULT ((0)) FOR [post_nRBC]
GO

ALTER TABLE [dbo].[lab_result_ucb_4nRBC_master] ADD  CONSTRAINT [DF_lab_result_ucb_4nRBC_count_master_lab_staff]  DEFAULT ((0)) FOR [lab_staff]
GO

ALTER TABLE [dbo].[lab_result_ucb_5viability_detail] ADD  CONSTRAINT [DF_lab_result_ucb_5viability_detail_bag]  DEFAULT ((0)) FOR [bag]
GO

ALTER TABLE [dbo].[lab_result_ucb_5viability_detail] ADD  CONSTRAINT [DF_Table_1_pre_nRBC]  DEFAULT ((0)) FOR [pre_viability]
GO

ALTER TABLE [dbo].[lab_result_ucb_5viability_detail] ADD  CONSTRAINT [DF_Table_1_post_nRBC]  DEFAULT ((0)) FOR [post_viability]
GO

ALTER TABLE [dbo].[lab_result_ucb_5viability_master] ADD  CONSTRAINT [DF_lab_result_ucb_5viability_master_lab_staff]  DEFAULT ((0)) FOR [lab_staff]
GO

ALTER TABLE [dbo].[lab_result_ucb_6sterilitytest_detail] ADD  CONSTRAINT [DF_lab_result_ucb_6sterilitytest_detail_bag]  DEFAULT ((0)) FOR [bag]
GO

ALTER TABLE [dbo].[lab_result_ucb_6sterilitytest_master] ADD  CONSTRAINT [DF_lab_result_ucb_6sterilitytest_master_itemno]  DEFAULT ((0)) FOR [item_no]
GO

ALTER TABLE [dbo].[lab_result_ucb_6sterilitytest_master] ADD  CONSTRAINT [DF_lab_result_ucb_6sterilitytest_master_lab_staff]  DEFAULT ((0)) FOR [lab_staff]
GO

ALTER TABLE [dbo].[lab_result_ucb_7bloodgrouping_detail] ADD  CONSTRAINT [DF_lab_result_ucb_7bloodgrouping_detail_bag]  DEFAULT ((0)) FOR [bag]
GO

ALTER TABLE [dbo].[lab_result_ucb_7bloodgrouping_master] ADD  CONSTRAINT [DF_lab_result_ucb_7bloodgrouping_master_lab_staff]  DEFAULT ((0)) FOR [lab_staff]
GO


