USE [LabDBd]
GO
ALTER TABLE lab_agreement_speciment_duration
DROP COLUMN kitnumber;
Go
ALTER TABLE lab_agreement_speciment_duration DROP CONSTRAINT [DF_lab_agreement_speciment_duration_messenger_id]  
GO
ALTER TABLE lab_agreement_speciment_duration 
DROP COLUMN messenger_id;
Go
ALTER TABLE lab_agreement_speciment_duration
DROP COLUMN messenger_name 
go

-------------------------
ALTER TABLE lab_agreement_evaluate_transportForm
ADD [messenger_id] [int] NULL	
GO
ALTER TABLE [dbo].[lab_agreement_evaluate_transportForm] ADD  CONSTRAINT [DF_lab_agreement_evaluate_transportForm_messenger_id]  DEFAULT ((0)) FOR [messenger_id]
GO
-----------------------
ALTER TABLE lab_agreement_speciment_evaluate_form_AM
ADD [kitnumber] [nvarchar](50) NULL
GO
ALTER TABLE lab_agreement_speciment_evaluate_form_CT
ADD [kitnumber] [nvarchar](50) NULL
GO
ALTER TABLE lab_agreement_speciment_evaluate_form_MB
ADD [kitnumber] [nvarchar](50) NULL
GO
ALTER TABLE lab_agreement_speciment_evaluate_form_PB
ADD [kitnumber] [nvarchar](50) NULL
GO
ALTER TABLE lab_agreement_speciment_evaluate_form_PBSC
ADD [kitnumber] [nvarchar](50) NULL
GO
ALTER TABLE lab_agreement_speciment_evaluate_form_PLC
ADD [kitnumber] [nvarchar](50) NULL
GO
ALTER TABLE lab_agreement_speciment_evaluate_form_UCB
ADD [kitnumber] [nvarchar](50) NULL
GO



