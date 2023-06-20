use LabDBd
go

---------------------------
Alter table lab_tbl_staff
add Position_id int
go 
update  lab_tbl_staff set Position_id=(select Position_id from vw_org_position where Position_name=lab_tbl_staff.Position)
go
----------------------------
Alter table lab_agreement
add  interpreter nvarchar(180)
go

Alter table lab_agreement_speciment_duration
add kitnumber nvarchar(50),  
	messenger_id int,
    messenger_name nvarchar(150)
go  
 
alter table lab_agreement_speciment_evaluate_form_AM
add fremark nvarchar(255)
go

alter table lab_agreement_speciment_evaluate_form_CT
add fremark nvarchar(255)
go

alter table lab_agreement_speciment_evaluate_form_PB
add fremark nvarchar(255)
go

alter table lab_agreement_speciment_evaluate_form_PBSC
add fremark nvarchar(255)
go

alter table lab_agreement_speciment_evaluate_form_PLC
add fremark nvarchar(255)
go

alter table lab_agreement_speciment_evaluate_form_UCB
add fremark nvarchar(255)
go

------------------------
SET ANSI_NULLS ON
GO 
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[lab_agreement_speciment_evaluate_form_MB](
	[tid] [nvarchar](15) NOT NULL,
	[specimen_code] [int] NOT NULL,
	[weight_Fl_kg] [float] NULL,
	[No1_eFL] [nvarchar](1) NULL,
	[No2_eFL] [nvarchar](1) NULL,
	[eFL_infectiousTest_Index] [int] NULL,
	[eFL_infectiousTest_Text] [nvarchar](120) NULL,
	[collected_date] [date] NULL,
	[collected_by] [nvarchar](150) NULL,
	[collected_byName] [nvarchar](150) NULL,
	[fremark] [nvarchar](255) NULL,
	[agr_save_by] [nvarchar](50) NULL,
	[agr_save_date] [date] NULL,
	[agr_save_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_lab_agreement_speciment_evaluate_form_MB] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO 
ALTER TABLE [dbo].[lab_agreement_speciment_evaluate_form_MB] ADD  CONSTRAINT [DF_lab_agreement_speciment_evaluate_form_MB_weight_Fl_kg]  DEFAULT ((0)) FOR [weight_Fl_kg]
GO
ALTER TABLE [dbo].[lab_agreement_speciment_evaluate_form_MB] ADD  CONSTRAINT [DF_lab_agreement_speciment_evaluate_form_MB_eFL_infectiousTest_Index]  DEFAULT ((0)) FOR [eFL_infectiousTest_Index]
GO

-----------------------------------------------------


SET QUOTED_IDENTIFIER ON
GO 
ALTER view [dbo].[vw_agreements_search]
as 
SELECT 'agreement' as RowType,lab_agreement.tid,lab_agreement.referancenumber,lab_agreement.agr_no,lab_agreement.labnumber, lab_agreement.agr_date, lab_agreement.agr_startdate, lab_agreement.agr_value, lab_agreement.main_productcode, lab_tbl_product.productname, lab_agreement.idcode_owner as idcode
, lab_customer.prefix_name, lab_customer.pname, lab_customer.idcard, lab_customer.passportno, lab_agreement.agr_save_by, lab_agreement.agr_save_date, lab_agreement.agr_save_time
,lab_agreement.referancenumber_old
FROM  lab_agreement INNER JOIN  lab_customer ON lab_agreement.idcode_owner = lab_customer.idcode LEFT OUTER JOIN lab_tbl_product ON lab_agreement.main_productcode = lab_tbl_product.productcode
UNION ALL
SELECT 'owner' as RowType,lab_agreement.tid,lab_agreement.referancenumber,lab_agreement.agr_no,lab_agreement.labnumber, lab_agreement.agr_date, lab_agreement.agr_startdate, lab_agreement.agr_value, lab_agreement.main_productcode, lab_tbl_product.productname, lab_agreement.idcode_owner as idcode, 
 lab_customer.prefix_name, lab_customer.pname, lab_customer.idcard, lab_customer.passportno, lab_agreement.agr_save_by, lab_agreement.agr_save_date, lab_agreement.agr_save_time
,lab_agreement.referancenumber_old
FROM lab_agreement INNER JOIN lab_customer ON lab_agreement.idcode_owner = lab_customer.idcode LEFT OUTER JOIN lab_tbl_product ON lab_agreement.main_productcode = lab_tbl_product.productcode
WHERE (lab_agreement.idcode_mother = '') OR (lab_agreement.idcode_mother IS NULL)
union all
SELECT 'mother' as RowType,lab_agreement.tid,lab_agreement.referancenumber,lab_agreement.agr_no,lab_agreement.labnumber, lab_agreement.agr_date, lab_agreement.agr_startdate, lab_agreement.agr_value, lab_agreement.main_productcode, lab_tbl_product.productname, lab_agreement.idcode_mother as idcode
, lab_customer.prefix_name, lab_customer.pname, lab_customer.idcard, lab_customer.passportno, lab_agreement.agr_save_by, lab_agreement.agr_save_date,lab_agreement.agr_save_time
,lab_agreement.referancenumber_old
FROM lab_agreement INNER JOIN  lab_customer ON lab_agreement.idcode_mother = lab_customer.idcode LEFT OUTER JOIN lab_tbl_product ON lab_agreement.main_productcode = lab_tbl_product.productcode
WHERE  (lab_agreement.idcode_mother <> '') 
union all
SELECT  'father' as RowType,lab_agreement.tid,lab_agreement.referancenumber,lab_agreement.agr_no,lab_agreement.labnumber, lab_agreement.agr_date, lab_agreement.agr_startdate, lab_agreement.agr_value, lab_agreement.main_productcode, lab_tbl_product.productname, lab_agreement.idcode_father as idcode
, lab_customer.prefix_name ,lab_customer.pname, lab_customer.idcard, lab_customer.passportno, lab_agreement.agr_save_by, lab_agreement.agr_save_date,lab_agreement.agr_save_time
,lab_agreement.referancenumber_old
FROM lab_agreement INNER JOIN lab_customer ON lab_agreement.idcode_father = lab_customer.idcode LEFT OUTER JOIN lab_tbl_product ON lab_agreement.main_productcode = lab_tbl_product.productcode
WHERE (lab_agreement.idcode_father <> '')
union all
SELECT   'infent' as RowType,lab_agreement.tid,lab_agreement.referancenumber,lab_agreement.agr_no,lab_agreement.labnumber,lab_agreement.agr_date, lab_agreement.agr_startdate, lab_agreement.agr_value, lab_agreement.main_productcode, lab_tbl_product.productname, lab_agreement.idcode_infent as idcode
, lab_customer.prefix_name, lab_customer.pname, lab_customer.idcard, lab_customer.passportno, lab_agreement.agr_save_by, lab_agreement.agr_save_date, lab_agreement.agr_save_time
,lab_agreement.referancenumber_old
FROM  lab_agreement INNER JOIN lab_customer ON lab_agreement.idcode_infent = lab_customer.idcode LEFT OUTER JOIN  lab_tbl_product ON lab_agreement.main_productcode = lab_tbl_product.productcode
WHERE (lab_agreement.idcode_infent <> '')
GO


------------------------------
USE [LabDBd]
GO
/****** Object:  Table [dbo].[lab_agreement_evaluate_sampletype]    Script Date: 18/06/2023 02:17:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lab_agreement_evaluate_sampletype](
	[tid] [nvarchar](15) NOT NULL,
	[Collected_Place] [nvarchar](120) NULL,
	[Sample_Type] [nvarchar](80) NULL,
	[Collected_Method] [nvarchar](50) NULL,
	[ProcessingOrder_SpecimentList] [nvarchar](10) NULL,
	[Speciment_Type] [nvarchar](50) NULL,
	[Speciment_Volume] [float] NULL,
	[save_by] [nvarchar](50) NULL,
	[save_date] [date] NULL,
	[save_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_lab_agreement_evaluate_sampletype] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[lab_agreement_evaluate_sampletype] ADD  CONSTRAINT [DF_Table_1_wieght_mother]  DEFAULT ((0)) FOR [Collected_Place]
GO
ALTER TABLE [dbo].[lab_agreement_evaluate_sampletype] ADD  CONSTRAINT [DF_lab_agreement_evaluate_sampletype_Speciment_Volume]  DEFAULT ((0)) FOR [Speciment_Volume]
GO
