use mu_live

SELECT 
	a_location_primary + ' - ' + a_location_p_short AS Location,
	a_name_last + ', ' + a_name_first AS EmplName,
	em.a_employee_number,
	a_accrual_type,
	at_desc_long,
	ac_active_y_n,
	ac_quant_avail 

 FROM pr_accruals ac LEFT OUTER JOIN pr_employee_mast em ON ac.a_employee_number = em.a_employee_number 
 WHERE a_location_primary = '4160' and a_accrual_type IN ('C', 'H') and ac_quant_avail > 0 and ac_active_y_n = 'Y'
 ORDER BY Location, EmplName

 SELECT * FROM pr_accruals where a_employee_number = 929