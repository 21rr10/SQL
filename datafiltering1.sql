--Data filtering
-- where operator 
-- comparison operator = != <> > < >= <= ==


--retreive all customers from germany
 select * from customers where country = 'Germany'

 --retrieve all customers who are not from germany


select * from customers where country != 'Germany'


--all customers with score>500

select * from customers
where score >500

--all customers with score>= 500

select * from customers
where score >=500
--all customers with score< 500

select * from customers
where score < 500

--all customers with score<= 500

select * from customers
where score <= 500

--Logical operators and or not
-- and--  all conditions must be true
-- or-- one of the conditions msut be true
--not -- reverse or excludes the matching values


--customers with country = usa and score >500
select * from customers
where country='USA' and score>500

--customers with country = usa or score >500
select * from customers
where country='USA' or score>500

--customers with score  not less than 500
select * from customers
where not score<500





--Range operator-- between
-- values wuthin a rnage

select * from customers
where score between 100 and 500


select * from customers
where score >= 100 and score<=500

--membership operator in , not in
--in check if a value exist in a list

--all customers either germnay or usa

select * from customers
where country in ('Germnay','USA')


--Search operator-- LIKE (% or _ )
--search for a pattern in text
select * from customers
where first_name like '%n'


select * from customers
where first_name like 'M%'

select * from customers
where first_name like '%r%'

select * from customers
where first_name like '__r%'