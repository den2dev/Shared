USE [LabDBd]
GO
Truncate table lab_agreement
Truncate table lab_agreement_birth_information
Truncate table lab_agreement_evaluate_FL
Truncate table lab_agreement_evaluate_sampletype
Truncate table lab_agreement_evaluate_transportForm
Truncate table lab_agreement_more_detail
Truncate table lab_agreement_newborn_detail
Truncate table lab_agreement_product
Truncate table lab_agreement_speciment_duration
Truncate table lab_agreement_speciment_evaluate_form_AM
Truncate table lab_agreement_speciment_evaluate_form_CT
Truncate table lab_agreement_speciment_evaluate_form_MB
Truncate table lab_agreement_speciment_evaluate_form_PB
Truncate table lab_agreement_speciment_evaluate_form_PBSC
Truncate table lab_agreement_speciment_evaluate_form_PLC
Truncate table lab_agreement_speciment_evaluate_form_UCB
Truncate table lab_customer
Truncate table lab_result_ucb_1detail_processing
Truncate table lab_result_ucb_1detail_totalstemcellunit
Truncate table lab_result_ucb_1master
Truncate table lab_result_ucb_2cellcount_detail
Truncate table lab_result_ucb_2cellcount_master
Truncate table lab_result_ucb_3cd34_enumeration_detail
Truncate table lab_result_ucb_3cd34_enumeration_master
Truncate table lab_result_ucb_4nRBC_detail
Truncate table lab_result_ucb_4nRBC_master
Truncate table lab_result_ucb_5viability_detail
Truncate table lab_result_ucb_5viability_master
Truncate table lab_result_ucb_6sterilitytest_detail
Truncate table lab_result_ucb_6sterilitytest_master
Truncate table lab_result_ucb_7bloodgrouping_detail
Truncate table lab_result_ucb_7bloodgrouping_master
 

GO
truncate table lab_tbl_specimen
GO
insert into lab_tbl_specimen(specimen_code,specimen_name,specimen_nameEN,specimen_nameTH,unitname,isenable,saveby)
select 1,'UCB','Umbilical cord blood (UCB)','เลือดจากรกและสายสะดือ','Unit','Y','superadmin'
union all
select 2,'CT','Cord tissue (CT)','เนื้อเยื่อสายสะดือ','Unit','Y','superadmin'
union all
select 3,'PLC','Placenta (PLC)','เนื้อเยื่อรก','Unit','Y','superadmin'
union all
select 4,'AM','Amnion (AM)','เยื่อหุ้มรก','Unit','Y','superadmin'
union all
select 5,'PBSC','Peripheral blood stem cells (PBSC)','สเต็มเซลล์จากกระแสโลหิต','Unit','Y','superadmin'
union all
select 6,'PB','Peripheral blood (PB)','เลือดจากกระแสโลหิต','Unit','Y','superadmin'
union all
select 7,'MB','Maternal Blood (MB)','เลือดมารดา','SET','Y','superadmin'


