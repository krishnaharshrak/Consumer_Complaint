## Very first and last complaint received on which date

SELECT
min(date_received) as First_Complaint
,max(date_received) as New_Complaint
  from 
  `bigquery-public-data.cfpb_complaints.complaint_database` 
  

## Number of states in the given list.
SELECT
count(distinct state)

FROM `bigquery-public-data.cfpb_complaints.complaint_database`


##Number for complaints received for various products and keeping products with max number of complaints on top.
SELECT
  product,
  subproduct,
  COUNT(DISTINCT(complaint_id)) AS count_complaints
FROM
  `bigquery-public-data.cfpb_complaints.complaint_database` 
GROUP BY
  product, subproduct
ORDER BY
  count_complaints desc



##Number of complaints received for the companies in descending order
SELECT
  company_name,
  COUNT(DISTINCT(complaint_id)) AS count_complaints
FROM 
`bigquery-public-data.cfpb_complaints.complaint_database` 

GROUP BY
  company_name
ORDER BY
  count_complaints desc



## Which company had the most number of issues faced by the customers
SELECT 
company_name,

count(distinct(issue)) as Issues_faced
  from  `bigquery-public-data.cfpb_complaints.complaint_database`
  GROUP BY company_name order by Issues_faced desc 



