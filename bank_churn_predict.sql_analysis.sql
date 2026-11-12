use pytable;

select * from bank_churn_predict;

-- Which country has the highest churn rate, and what share of total churn does each country contribute?
select country,count(actual_churn)as actual_churn from bank_churn_predict where actual_churn<1  group by country order by actual_churn desc;
-- Does churn change with the number of products held and with active vs inactive status?
SELECT products_number, active_member,COUNT(*) AS customers,ROUND(100*AVG(actual_churn),2) AS churn_rate_pct
FROM bank_churn_predict GROUP BY products_number, active_member HAVING COUNT(*) >= 30 ORDER BY churn_rate_pct DESC;
-- Which high-value customers (above-average balance) churned, ranked by balance within each country?
select country,avg(balance)as high_avg_balance from bank_churn_predict group by country order by high_avg_balance desc;
-- Which gender × age group segments churn more or less than the overall churn rate?
select gender,count(actual_churn)as actual_churn from bank_churn_predict where actual_churn>0 group by gender order by actual_churn desc;
select gender,count(predicted_churn)as predicted_churn from bank_churn_predict where predicted_churn>0 group by gender order by predicted_churn desc;
select gender,count(churn_probability)as churn_probability from bank_churn_predict where churn_probability>0 group by gender order by churn_probability desc;
-- How well does the model perform (confusion matrix, recall, precision), and which actual churners did it miss?
SELECT SUM(actual_churn=1 AND predicted_churn=1) AS true_positive,
       SUM(actual_churn=0 AND predicted_churn=1) AS false_positive,
       SUM(actual_churn=1 AND predicted_churn=0) AS false_negative,
       SUM(actual_churn=0 AND predicted_churn=0) AS true_negative,
       ROUND(100*SUM(actual_churn=1 AND predicted_churn=1)/SUM(actual_churn=1),2) AS recall_pct,
       ROUND(100*SUM(actual_churn=1 AND predicted_churn=1)/NULLIF(SUM(predicted_churn=1),0),2) AS precision_pct
FROM bank_churn_predict;