

select Gender, count(Gender) as TotalCount,

Count(Gender) * 100.0 / (Select Count(*) from db_Churn.dbo.Churn_1 )  as Percentage

from db_Churn.dbo.Churn_1 

Group by Gender;


SELECT Contract, Count(Contract) as TotalCount,

Count( Contract) * 100.0 / (Select Count(*) from db_Churn.dbo.Churn_1)  as Percentage

from db_Churn.dbo.Churn_1 

Group by Contract

 

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,

Sum(Total_Revenue) / (Select sum(Total_Revenue) from db_Churn.dbo.Churn_1) * 100  as RevPercentage

from db_Churn.dbo.Churn_1

Group by Customer_Status

 

SELECT State, Count(State) as TotalCount,

Count(State) * 100.0 / (Select Count(*) from db_Churn.dbo.Churn_1)  as Percentage

from db_Churn.dbo.Churn_1

Group by State

Order by Percentage desc
