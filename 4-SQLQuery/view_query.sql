-- VIEW AND QUERY
-- create view using left join(to include all columns of budget) on two tables 
-- table1 - a 
-- table 2 - b
create OR REPLACE view budget_vs_actual
	as select category , sum(b.cost) as estimated_cost, sum(a_cost) actual_cost from budget b 
left join (select sum(cost) as a_cost , task from actual group by task ) a on a.task = b.task group by category;

-- simple query to get result using view
SELECT * FROM  budget_vs_actual;
 
-- QUERY without using view 
-- table1 left join table 2

select category , sum(b.cost) as estimated_cost, sum(a_cost) actual_cost from budget b 
left join (select sum(cost) as a_cost , task from actual group by task ) a on a.task = b.task group by category;