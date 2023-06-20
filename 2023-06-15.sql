USE [LabDBc]
GO

/****** Object:  Table [dbo].[tbl_org_position]    Script Date: 17/06/2023 12:10:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_org_position](
	[position_id] [int] NOT NULL,
	[position_name] [nvarchar](50) NULL,
	[isenable] [varchar](1) NULL,
 CONSTRAINT [PK_tbl_org_position] PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

---------------------
insert into tbl_org_position
select 1,'Laboratory director','Y'
union all 
select 2,'นักเทคนิคการแพทย์','Y'
union all 
select 3,'เจ้าหน้าที่ธุรการ','Y'
union all 
select 4,'ธุรการประสานงาน','Y'
union all 
select 5,'พนักงานรับส่ง','Y'
go

------------------------
USE [LabDBd]
GO 
/****** Object:  View [dbo].[vw_org_position]    Script Date: 17/06/2023 12:16:15 PM ******/
SET ANSI_NULLS ON
GO 
SET QUOTED_IDENTIFIER ON
GO 
CREATE VIEW [dbo].[vw_org_position]
AS
SELECT        position_id, position_name, isenable
FROM            LabDBc.dbo.tbl_org_position
GO