use laptop_data ;

-- regular expression

select * from laptop_price ;

select * from laptop_price where brand regexp "^m" ;

select * from laptop_price where `cpu` regexp "^m" ;

select * from laptop_price where brand regexp "^[mla]" ;

select * from laptop_price where `cpu`regexp "hx$" ;

select * from laptop_price where `cpu`regexp "[xs]$" ;

select * from laptop_price where price_inr regexp "^40000$" ;

----------------------------------------

select * from laptop_price where gpu rlike "^i" ;

select * from laptop_price where gpu rlike "^i|^m" ;

select * from laptop_price where gpu rlike "^i|m$" ;

select * from laptop_price where brand rlike "^a...." ;

----------------------------------------------------------------

select * from laptop_price where `cpu` like  "i3%"  ;

select * from laptop_price where `cpu` like  "%1255u"  ;

select * from laptop_price where `cpu` like  "%m1%"  ;

select * from laptop_price where sku like  "ltp%06"  ;

select * from laptop_price where sku like  "ltp001%"  ;

-----------------------------------------------

-- case statements

select brand, price_inr, 
case 
	when price_inr < 80000 then "budget"
	when price_inr >= 80000 and price_inr <=150000 then "mid_range"
	when price_inr > 150000 then "premium" 
	end as price_category
from laptop_price 

-- common table expression

with common_table as 
(select brand, price_inr, 
case 
	when price_inr < 80000 then "budget"
	when price_inr >= 80000 and price_inr <=150000 then "mid_range"
	when price_inr > 150000 then "premium" 
	end as price_category
from laptop_price )
select * from common_table where  price_category = "budget"; 

alter table laptop_price
add column price_cat varchar(20) ;


update laptop_price
set price_cat = case 
					when price_inr < 80000 then "budget"
					when price_inr >= 80000 and price_inr <=150000 then "mid_range"
					when price_inr > 150000 then "premium" 
					end ;

delete from laptop_price
where price_cat  = case 
					 when price_cat = "budget" then "budget"
                     when price_cat = "premium" then "premium"
                     end ;
				
select * from laptop_price ;  

update laptop_price
set price_cat = case 
					 when price_cat = "budget" then null
                     when price_cat = "premium" then null
                     else "mid_range"
                     end ;

select brand, model,avg(price_inr) as price from laptop_price 
group  by brand, model ;

with newtable as 
( select brand, model,avg(price_inr) as price from laptop_price 
group  by brand, model )
select * from newtable where price > 100000 ;


rollback ;                  
           
            

