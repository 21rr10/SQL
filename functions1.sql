-- Functions in SQL
-- for data maniulation , analysing and cleaning transforming etc
 -- two categories of functions
 -- single row fucntions-= one iput value ad  one output value
 -- multi row fucntions- multiple inputs s rows and sinle output row

 -- fucntons can be nested too.
use MyDatabase

 --Single row or row level calculation functions- String numeric date and time and null
 --multi row fucntions or aggregations-- aggregate functions basics and windows fucn tions


-- String functions

--Manipulations fucntions[ concat, Upper,lower, trim]

-- COncat- concat multiple string vlaues into 1

-- concatenate firstname and country into 1 column

select first_name,country, CONCAT(first_name,' ',country) as name_country from customers
-- upper and lower capitalise and opposite


-- trim
--find customer whohave leading or lrailing spaces
select first_name
from customers
where first_name!= trim(first_name)

select first_name, len(first_name) as Actual_len, len(trim(first_name)) as After_trim 
from customers
where len(first_name)!=len(trim(first_name))

-- Replace function-- replace something withsomething 

select 
'950-83814-90' as phone,
replace('950-83814-90','-','/') as clean


--len()

--length of a value

select first_name, len(first_name) as length1 from customers

-- String extraction functions[Left and right, substring]

-- left extracts specofic  number of characters from elft or the string and right does the same for right
select first_name, LEFT(trim(first_name),3) as first3,right(trim(first_name),3) as last3 from customers

--Substring
-- extracts a part oft he string at a specified location
 select first_name, SUBSTRING(first_name,3,2)as extracted from customers
 select first_name, SUBSTRING(trim(first_name),2,len(first_name))as extracted from customers