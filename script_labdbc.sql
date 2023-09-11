USE [master]
GO
/****** Object:  Database [LabDBc]    Script Date: 12/09/2023 12:45:25 AM ******/
CREATE DATABASE [LabDBc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LabDBc', FILENAME = N'D:\Software Developer\MQL-Database\LabDBc.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LabDBc_log', FILENAME = N'D:\Software Developer\MQL-Database\LabDBc_log.ldf' , SIZE = 1536KB , MAXSIZE = 102400KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LabDBc] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LabDBc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LabDBc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LabDBc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LabDBc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LabDBc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LabDBc] SET ARITHABORT OFF 
GO
ALTER DATABASE [LabDBc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LabDBc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LabDBc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LabDBc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LabDBc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LabDBc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LabDBc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LabDBc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LabDBc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LabDBc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LabDBc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LabDBc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LabDBc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LabDBc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LabDBc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LabDBc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LabDBc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LabDBc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LabDBc] SET  MULTI_USER 
GO
ALTER DATABASE [LabDBc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LabDBc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LabDBc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LabDBc] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LabDBc] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LabDBc]
GO
/****** Object:  User [laber]    Script Date: 12/09/2023 12:45:25 AM ******/
CREATE USER [laber] FOR LOGIN [laber] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [laber]
GO
/****** Object:  Table [dbo].[tbl_log_access]    Script Date: 12/09/2023 12:45:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_log_access](
	[frindx] [int] IDENTITY(1,1) NOT NULL,
	[company_code] [nvarchar](5) NULL,
	[module_code] [nvarchar](10) NULL,
	[menu_code] [nvarchar](60) NULL,
	[user_name] [nvarchar](60) NULL,
	[stm_date] [date] NULL,
	[stm_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_tbl_log_access] PRIMARY KEY CLUSTERED 
(
	[frindx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_log_data_update]    Script Date: 12/09/2023 12:45:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_log_data_update](
	[frindx] [int] IDENTITY(1,1) NOT NULL,
	[company_code] [nvarchar](5) NULL,
	[module_code] [nvarchar](10) NULL,
	[menu_code] [nvarchar](60) NULL,
	[tablefield_name] [nvarchar](150) NULL,
	[control_name] [nvarchar](150) NULL,
	[trn_no] [nvarchar](50) NULL,
	[data_value] [nvarchar](max) NULL,
	[user_name] [nvarchar](60) NULL,
	[stm_date] [date] NULL,
	[stm_time] [nvarchar](8) NULL,
 CONSTRAINT [PK_tbl_log_data_update] PRIMARY KEY CLUSTERED 
(
	[frindx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_menu]    Script Date: 12/09/2023 12:45:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_menu](
	[module_code] [nvarchar](10) NOT NULL,
	[menu_code] [nvarchar](60) NOT NULL,
	[menu_name] [nvarchar](255) NULL,
	[mnrole] [varchar](6) NULL,
	[indexof] [int] NULL,
 CONSTRAINT [PK_tbl_menu_1] PRIMARY KEY CLUSTERED 
(
	[menu_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_module]    Script Date: 12/09/2023 12:45:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_module](
	[module_code] [nvarchar](10) NOT NULL,
	[module_name] [nvarchar](50) NULL,
	[indexof] [int] NULL,
 CONSTRAINT [PK_tbl_module] PRIMARY KEY CLUSTERED 
(
	[module_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_org_position]    Script Date: 12/09/2023 12:45:25 AM ******/
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
/****** Object:  Table [dbo].[tbl_systemconfiguration]    Script Date: 12/09/2023 12:45:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_systemconfiguration](
	[groupcode] [nvarchar](10) NOT NULL,
	[itemcode] [int] NOT NULL,
	[datavalue] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_systemconfiguration] PRIMARY KEY CLUSTERED 
(
	[groupcode] ASC,
	[itemcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user_role_menu]    Script Date: 12/09/2023 12:45:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_role_menu](
	[user_name] [nvarchar](60) NOT NULL,
	[module_code] [nvarchar](10) NOT NULL,
	[menu_code] [nvarchar](60) NOT NULL,
	[role_read] [varchar](1) NULL,
	[role_add] [varchar](1) NULL,
	[role_update] [varchar](1) NULL,
	[role_delete] [varchar](1) NULL,
	[role_print] [varchar](1) NULL,
	[role_approve] [varchar](1) NULL,
 CONSTRAINT [PK_tbl_user_role_menu] PRIMARY KEY CLUSTERED 
(
	[user_name] ASC,
	[module_code] ASC,
	[menu_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_users]    Script Date: 12/09/2023 12:45:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_users](
	[user_name] [nvarchar](60) NOT NULL,
	[password] [nvarchar](50) NULL,
	[user_fullname] [nvarchar](80) NULL,
	[department] [nvarchar](50) NULL,
	[is_admin] [varchar](1) NULL,
	[is_active] [varchar](1) NULL,
 CONSTRAINT [PK_tbl_users] PRIMARY KEY CLUSTERED 
(
	[user_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwLogAccess]    Script Date: 12/09/2023 12:45:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwLogAccess]
AS
SELECT        dbo.tbl_log_access.company_code, dbo.tbl_log_access.module_code, dbo.tbl_module.module_name, dbo.tbl_log_access.menu_code, dbo.tbl_menu.menu_name, dbo.tbl_log_access.user_name, dbo.tbl_users.user_fullname, 
                         dbo.tbl_users.department, dbo.tbl_log_access.stm_date, dbo.tbl_log_access.stm_time, dbo.tbl_log_access.frindx
FROM            dbo.tbl_log_access LEFT OUTER JOIN
                         dbo.tbl_users ON dbo.tbl_log_access.user_name = dbo.tbl_users.user_name LEFT OUTER JOIN
                         dbo.tbl_module ON dbo.tbl_log_access.module_code = dbo.tbl_module.module_code LEFT OUTER JOIN
                         dbo.tbl_menu ON dbo.tbl_log_access.menu_code = dbo.tbl_menu.menu_code
GO
SET IDENTITY_INSERT [dbo].[tbl_log_data_update] ON 

INSERT [dbo].[tbl_log_data_update] ([frindx], [company_code], [module_code], [menu_code], [tablefield_name], [control_name], [trn_no], [data_value], [user_name], [stm_date], [stm_time]) VALUES (1, N'DB1', N'mdl02', N'LabTblOutLab', N'lab_tbl_outlab.isenable', N'chk_Active', N'6', N'N', N'superadmin', CAST(N'2023-09-11' AS Date), N'21:09:15')
INSERT [dbo].[tbl_log_data_update] ([frindx], [company_code], [module_code], [menu_code], [tablefield_name], [control_name], [trn_no], [data_value], [user_name], [stm_date], [stm_time]) VALUES (2, N'DB1', N'mdl02', N'LabTblOutLab', N'lab_tbl_outlab.isenable', N'chk_Active', N'7', N'N', N'superadmin', CAST(N'2023-09-11' AS Date), N'21:09:22')
SET IDENTITY_INSERT [dbo].[tbl_log_data_update] OFF
GO
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl03', N'InvtGoodsReceive', N'Goods Receipt / บันทึกรับสินค้า', N'AERP', 2)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl03', N'InvtPurchaseRequest', N'Purchased Requisition (PR) / บันทึกออกใบขอซื้อ', N'AERP', 1)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl03', N'InvtStockAdjust', N'บันทึกเบิกสินค้า', N'AERP', 3)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl03', N'InvtStockControl', N'การควบคุมสินค้าคงคลัง', N'AERP', 4)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl03', N'InvtStockHistory', N'ประวัติ Stock', N'AERP', 5)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl03', N'InvtTblProductCategory', N'ข้อมูลชนิดสินค้า', N'AERP', 1)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl03', N'InvtTblProductFile', N'ข้อมูลแฟ้มสินค้า', N'AERP', 4)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl03', N'InvtTblStockLocation', N'ข้อมูลสถานที่เก็บสินค้า', N'AERP', 2)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl03', N'InvtTblUnit', N'หน่วยนับ', N'AERP', 3)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl03', N'InvtTblVendorFile', N'ข้อมูลแฟ้มผู้จำหน่าย', N'AERP', 5)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabClientData', N'บันทึกผลห้องแล็บ', N'AEDRUP', 1)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'labForm1', N'บันทึกผลห้องแล็บ', N'AEDRUP', 1)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'labMain', N'บันทึกผลห้องแล็บ', N'AEDRUP', 1)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabMainContract', N'1.บันทึกสร้างบัญชี (Create Profile)', N'AEDRUP', 0)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabMainReceiptSamplesEvaluate', N'2.บันทึกรับข้อมูลตัวอย่าง และแบบประเมิน (Receipt and evaluate samples)', N'AEDRUP', 0)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabMainResultLab', N'3.บันทึกผลการทดสอบทางห้องปฏิบัติการ (Laboratory results)', N'AEDRUP', 1)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabMainResultReport', N'4.สรุปผลและรายงานทางห้องปฏิบัติการ (Laboratory report and summarize)', N'AEDRUP', 0)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabTblHospital', N'ข้อมูลโรงพยาบาล', N'AERP', 1)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabTblObstetrician', N'ข้อมูลสูติแพทย์', N'AERP', 2)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabTblOutLab', N'แฟ้มข้อมูล Out &Lab', N'AERP', 6)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabTblProducts', N'กำหนด Product &File', N'AERP', 3)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabTblSampletype', N'กำหนด ชนิดตัวอย่าง', N'AERP', 4)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabTblStaff', N'แฟ้มข้อมูลเจ้าหน้าที่แล็บ', N'AERP', 5)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabTblStorage', N'Storage / สถานที่เก็บ', N'AERP', 0)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl02', N'LabTblStorageBanking', N'สถานที่เก็บ', N'AERP', 5)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl01', N'sysCompany', N'ข้อมูล&บริษัท', N'E', 2)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl01', N'sysConfig', N'ตั้งค่าระบบ', N'E', 1)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl01', N'sysHistoryLog', N'ประวัติการเข้าใช้งาน', N'RP', 6)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl01', N'sysHistoryLogData', N'ตรวจสอบประวัติการแก้ไขข้อมูล', N'RP', 7)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl01', N'sysMenu', N'เมนูใช้งาน', N'R', 4)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl01', N'sysModule', N'&โมดูลการใช้งาน', N'R', 3)
INSERT [dbo].[tbl_menu] ([module_code], [menu_code], [menu_name], [mnrole], [indexof]) VALUES (N'mdl01', N'sysUser', N'กำหนดผู้ใช้งานและสิทธ์การใช้งาน', N'RAED', 5)
GO
INSERT [dbo].[tbl_module] ([module_code], [module_name], [indexof]) VALUES (N'mdl01', N'ตั้งค่าระบบ', 10)
INSERT [dbo].[tbl_module] ([module_code], [module_name], [indexof]) VALUES (N'mdl02', N'Laboratory', 20)
INSERT [dbo].[tbl_module] ([module_code], [module_name], [indexof]) VALUES (N'mdl03', N'Inventory', 30)
GO
INSERT [dbo].[tbl_org_position] ([position_id], [position_name], [isenable]) VALUES (1, N'Laboratory director', N'Y')
INSERT [dbo].[tbl_org_position] ([position_id], [position_name], [isenable]) VALUES (2, N'นักเทคนิคการแพทย์', N'Y')
INSERT [dbo].[tbl_org_position] ([position_id], [position_name], [isenable]) VALUES (3, N'เจ้าหน้าที่ธุรการ', N'Y')
INSERT [dbo].[tbl_org_position] ([position_id], [position_name], [isenable]) VALUES (4, N'ธุรการประสานงาน', N'Y')
INSERT [dbo].[tbl_org_position] ([position_id], [position_name], [isenable]) VALUES (5, N'พนักงานรับส่ง', N'Y')
GO
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user1', N'mdl01', N'sysCompany', N'Y', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user1', N'mdl01', N'sysConfig', N'Y', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user1', N'mdl01', N'sysHistoryLog', N'N', N'N', N'N', N'N', N'Y', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user1', N'mdl01', N'sysMenu', N'Y', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user1', N'mdl01', N'sysModule', N'Y', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user1', N'mdl01', N'sysUser', N'Y', N'Y', N'Y', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user1', N'mdl02', N'LabClientData', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user1', N'mdl02', N'labForm1', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user1', N'mdl02', N'labMain', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user2', N'mdl01', N'sysCompany', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user2', N'mdl01', N'sysConfig', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user2', N'mdl01', N'sysHistoryLog', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user2', N'mdl01', N'sysMenu', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user2', N'mdl01', N'sysModule', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user2', N'mdl01', N'sysUser', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user2', N'mdl02', N'LabClientData', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user2', N'mdl02', N'labForm1', N'N', N'N', N'N', N'N', N'N', N'N')
INSERT [dbo].[tbl_user_role_menu] ([user_name], [module_code], [menu_code], [role_read], [role_add], [role_update], [role_delete], [role_print], [role_approve]) VALUES (N'user2', N'mdl02', N'labMain', N'N', N'N', N'N', N'N', N'N', N'N')
GO
INSERT [dbo].[tbl_users] ([user_name], [password], [user_fullname], [department], [is_admin], [is_active]) VALUES (N'user1', N'dzA688sBSbk=', N'userA Ater Tcaat', N'acc', N'N', N'Y')
INSERT [dbo].[tbl_users] ([user_name], [password], [user_fullname], [department], [is_admin], [is_active]) VALUES (N'user2', N'MnBRf8b+7SA=', N'usre BBB  bba', N'account', N'N', N'Y')
INSERT [dbo].[tbl_users] ([user_name], [password], [user_fullname], [department], [is_admin], [is_active]) VALUES (N'user3', N'7y2jPOGB+QQ=', N'cccc ', N'acc', N'N', N'Y')
GO
ALTER TABLE [dbo].[tbl_log_access] ADD  CONSTRAINT [DF_tbl_log_access_stm_time]  DEFAULT (CONVERT([varchar],getdate(),(108))) FOR [stm_time]
GO
ALTER TABLE [dbo].[tbl_menu] ADD  CONSTRAINT [DF_tbl_menu_indexof]  DEFAULT ((0)) FOR [indexof]
GO
ALTER TABLE [dbo].[tbl_module] ADD  CONSTRAINT [DF_tbl_module_indexof]  DEFAULT ((0)) FOR [indexof]
GO
ALTER TABLE [dbo].[tbl_users] ADD  CONSTRAINT [DF_tbl_users_is_admin]  DEFAULT ('N') FOR [is_admin]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[62] 4[14] 2[6] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_log_access"
            Begin Extent = 
               Top = 55
               Left = 132
               Bottom = 324
               Right = 302
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_users"
            Begin Extent = 
               Top = 28
               Left = 673
               Bottom = 212
               Right = 843
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_module"
            Begin Extent = 
               Top = 24
               Left = 373
               Bottom = 137
               Right = 543
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_menu"
            Begin Extent = 
               Top = 160
               Left = 518
               Bottom = 305
               Right = 688
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwLogAccess'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwLogAccess'
GO
USE [master]
GO
ALTER DATABASE [LabDBc] SET  READ_WRITE 
GO
