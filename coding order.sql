-- CODING ORDER select distinct top from where groupby having orderby 
/*
	select distinct top 2
	 col1, col2
	 from table
	 where condition
	 groupby col1
	 having condition
	 order by col1 ASC
*/
/*
	There are 5 typs of filter
	1. filter columns-- use select
	2. filter duplicates -- distinct
	3. filter rows after result-- top
	4. filter rows before  aggregation --where
	5. filter rows after aggregation-- having
	*/
--EXECUTION ORDER  [ from  where groupby having select distinct orderby top]