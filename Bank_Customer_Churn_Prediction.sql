create database Bank_Customer_Churn ;
use Bank_Customer_Churn;

select * from Bank_Customer_Churn_Prediction;

select count(*) as total_count
from Bank_Customer_Churn_Prediction;

select count(*) as total_churn
from Bank_Customer_Churn_Prediction
where churn =1;

select round(
sum(churn)*100.0/count(*),
2
)as churn_rate
from Bank_Customer_Churn_Prediction;

select country,
count(*) as customres,
sum(churn) as churn_customer,
round(sum(churn)*100.0/count(*),2) as churn_rate
from Bank_Customer_Churn_Prediction
group by country;

select gender,
count(*) as customers,
sum(churn) as churn_customer,
round(sum(churn)*100.0/count(*),2) as churn_rate
from Bank_Customer_Churn_Prediction
group by gender;

select 
case 
    when age <30 then 'under 30'
    when age between 30 and 40 then '30-40'
    when age between 41 and 50 then '41-50'
    when age between 51 and 60 then '51-60'
    else '60+'
    end as age_group,
    count(*) as customers,
    sum(churn) as churn_customer,
    round(sum(churn)*100.0/count(*),2) as churn_rate
    from Bank_Customer_Churn_Prediction
    group by age_group
    order by churn_rate desc;
    
    select 
    active_member,
    count(*) as customers,
    sum(churn) as churn_customers,
    round(sum(churn)*100.0/count(*),2) as churn_rate
    from Bank_Customer_Churn_Prediction
    group by active_member;
    
    select 
    products_number,
    count(*) as customers,
    sum(churn) as churn_customers,
    round(sum(churn)*100.0/count(*),2) as churn_rate
    from Bank_Customer_Churn_Prediction
    group by products_number;
    
    select 
    case
         when credit_score <600 then 'Poor'
         when credit_score between 600 and 699 then 'Average'
         when credit_score between 700 and 799 then 'Good'
         else 'excellent'
         end as credit_category,
         
         count(*) as customers,
         sum(churn) as churn_customers,
         round(sum(churn)*100.0/count(*),2) as churn_rate
         from Bank_Customer_Churn_Prediction
         group by credit_category
         order by churn_rate desc;
         
select 
case 
     when balance = 0 then 'Zero Balance'
     when balance < 50000 then 'Low Balance'
     when balance < 100000 then 'Medium Balance'
     else 'High Balance'
     end Balance_group,
     
     count(*) as customers,
     sum(churn) as churn_customer,
     round(sum(churn)*100.0/count(*),2) as churn_rate
     from Bank_Customer_Churn_Prediction
     group by balance_group
     order by churn_rate desc;
     
     select
     case 
     when estimated_salary < 50000 then 'Low  Salary'
     when estimated_salary < 100000 then 'Medium Salary'
     else 'High Salary'
     end salary_group,
     
     count(*) as customers,
     sum(churn) as churn_customers,
     round(sum(churn)*100.0/count(*),2) as churn_rate
     from Bank_Customer_Churn_Prediction
     group by salary_group
     order by churn_rate desc;
     
select
customer_id,
country,
age,
balance,
estimated_salary
from Bank_Customer_Churn_Prediction
where churn = 1
order by balance desc ;
     
select 
products_number,
count(*) as customers,
sum(churn) as churn_customers,
round(sum(churn)*100.0/count(*),2) as churn_rate
from Bank_Customer_Churn_Prediction
group by products_number;
     