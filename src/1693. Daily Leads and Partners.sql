SELECT TO_CHAR(date_id,'YYYY-MM-DD') date_id,
make_name,
count(distinct(lead_id)) unique_leads,
count(distinct(partner_id)) unique_partners
FROM dailySales
GROUP BY TO_CHAR(date_id,'YYYY-MM-DD'),
make_name