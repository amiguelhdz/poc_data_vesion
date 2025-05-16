SELECT
	 A.contract_id,
	 customer_id,
	 contract_account_num,
	 payment_frequency_id,
	 product_id,
	 contract_start_dt,
	 contract_end_dt,
	 B.period_num,
	 B.period_num_act,
	 B.period_num_act_pay,
	 A.contract_status_cd,
	 A.contract_status_start_dt 
FROM DP_SEM_EXP.CONTRACT_HEADER_ATOMIC AS A 
INNER JOIN DP_SEM_EXP.CONTRACT_HEADER_COMP_ATOMIC AS B ON (A.contract_id = B.contract_id) 
WHERE contract_account_num in (180083895) 
;