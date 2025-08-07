--Number fucntions

--[Round, ABS]

--round 2 3.516=3.52
--round 1= 3.516=3.51
--round 0= 3.516= 4


select 3.516,
round(3.516,3) as round_3,
round(3.516,2) as round_2,
round(3.516,1) as round_1,
round(3.516,0) as round_0


select -3.516,
abs(3.516)