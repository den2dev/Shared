alter table lab_agreement_birth_information
add lab_staff_id int
go
ALTER TABLE [dbo].[lab_agreement_birth_information] ADD CONSTRAINT [DF_lab_agreement_birth_information_lab_staff_id]  DEFAULT ((0)) FOR [lab_staff_id]
GO
-----------
alter table lab_agreement_evaluate_transportForm
add lab_staff_id int
go
ALTER TABLE [dbo].[lab_agreement_evaluate_transportForm] ADD CONSTRAINT [DF_lab_agreement_evaluate_transportForm_lab_staff_id]  DEFAULT ((0)) FOR [lab_staff_id]
GO
-----------
alter table lab_agreement_speciment_evaluate_form_AM
add lab_staff_id int
go
ALTER TABLE [dbo].[lab_agreement_speciment_evaluate_form_AM] ADD CONSTRAINT [DF_lab_agreement_speciment_evaluate_form_AM_lab_staff_id]  DEFAULT ((0)) FOR [lab_staff_id]
GO
-----------
alter table lab_agreement_speciment_evaluate_form_CT
add lab_staff_id int
go
ALTER TABLE [dbo].[lab_agreement_speciment_evaluate_form_CT] ADD CONSTRAINT [DF_lab_agreement_speciment_evaluate_form_CT_lab_staff_id]  DEFAULT ((0)) FOR [lab_staff_id]
GO
-----------
alter table lab_agreement_speciment_evaluate_form_MB
add lab_staff_id int
go
ALTER TABLE [dbo].[lab_agreement_speciment_evaluate_form_MB] ADD CONSTRAINT [DF_lab_agreement_speciment_evaluate_form_MB_lab_staff_id]  DEFAULT ((0)) FOR [lab_staff_id]
GO
-----------
alter table lab_agreement_speciment_evaluate_form_PB
add lab_staff_id int
go
ALTER TABLE [dbo].[lab_agreement_speciment_evaluate_form_PB] ADD CONSTRAINT [DF_lab_agreement_speciment_evaluate_form_PB_lab_staff_id]  DEFAULT ((0)) FOR [lab_staff_id]
GO
-----------
alter table lab_agreement_speciment_evaluate_form_PBSC
add lab_staff_id int
go
ALTER TABLE [dbo].[lab_agreement_speciment_evaluate_form_PBSC] ADD CONSTRAINT [DF_lab_agreement_speciment_evaluate_form_PBSC_lab_staff_id]  DEFAULT ((0)) FOR [lab_staff_id]
GO
-----------
alter table lab_agreement_speciment_evaluate_form_PLC
add lab_staff_id int
go
ALTER TABLE [dbo].[lab_agreement_speciment_evaluate_form_PLC] ADD CONSTRAINT [DF_lab_agreement_speciment_evaluate_form_PLC_lab_staff_id]  DEFAULT ((0)) FOR [lab_staff_id]
GO
-----------
alter table lab_agreement_speciment_evaluate_form_UCB
add lab_staff_id int
go
ALTER TABLE [dbo].[lab_agreement_speciment_evaluate_form_UCB] ADD CONSTRAINT [DF_lab_agreement_speciment_evaluate_form_UCB_lab_staff_id]  DEFAULT ((0)) FOR [lab_staff_id]
GO
----------- 
alter table lab_agreement_evaluate_transportForm
add chklist_speciment varchar(20)
go







