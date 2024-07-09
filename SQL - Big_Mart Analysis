show databases;
create database BIG_MART ;
use big_mart;
show tables;
create  table Big_mart(Item_Identifier varchar(255),Item_weight float, Item_Fat_Content char(255),
Item_visibility float , Item_type char(255), Item_MRP float, Outlet_Identifier varchar(255), 
Outlet_establisment_Year int(255), Outlet_size char(255), Outlet_Location_Type varchar(255), 
Outlet_Type char(255), Item_Outlet_Sales float);


select *from big_mart;


delete big_MART;
#1 write a query to show Item_Identifier
select item_identifier from big_mart;

#2 write a sql query to show count of total Item_identifier
select count(Item_identifier) from big_mart;

#3 write a SQL query to show maximum item_weight
select max(item_weight), Item_Identifier  from big_mart; 

#4 write a sql query to show minimum item_weight
select min(item_weight),item_identifier from big_mart;

#5 WRITE a query to show average Item_Weight
select avg(item_weight) from big_mart;

#6. WRITE a query to show count OF Item_Fat_Content WHERE 
#Item_Fat_Content IS Low Fat
select count(Item_fat_content) from big_mart where Item_Fat_Content= "low fat";

#7. WRITE a query to show count OF Item_Fat_Content WHERE 
#Item_Fat_Content IS Regular
select count(item_fat_content) from big_mart where Item_Fat_Content = "regular";

#8. WRITE a query TO show maximum Item_MRP
select max(item_mrp) from big_mart;

#9. WRITE a query TO show minimum Item_MRP
select min(item_mrp) from big_mart;

#10.WRITE a query to show Item_Identifier , Item_Fat_Content 
#,Item_Type,Item_MRP and Item_MRP IS greater than 200
select item_identifier,item_fat_content,Item_type,item_mrp from big_mart where Item_MRP > 200;

#11.WRITE a query to show maximum Item_MRP WHERE 
#Item_Fat_Content IS Low Fat
select max(item_mrp),item_identifier from big_mart where Item_Fat_Content = 'low fat';

#12.WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS 
#Low Fat
select min(Item_mrp) from big_mart where item_fat_content = 'low fat';

#13.WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO 3100
select * from big_mart where Item_MRP between 50 and 100;

#14.WRITE a query to show ALL UNIQUE value Item_Fat_Content
select distinct item_Fat_content from big_mart;

#15.WRITE a query to show ALL UNIQUE value Item_Type
select distinct item_type from big_mart;

#16.WRITE a query to show ALL DATA IN descending ORDER BY Item MRP
select *from big_mart order by item_mrp desc;

#17.WRITE a query to show ALL DATA IN ascending ORDER BY 
#Item_Outlet_Sales
select *from big_mart order by Item_Outlet_Sales asc;

#18.WRITE a query to show ALL DATA IN ascending BY Item_Type
select *from big_mart order by item_type asc;

#19.WRITE a query to show DATA OF item_type dairy & Meat
select * from big_mart where item_type in ('dairy','meat');

#20.WRITE a query to show ALL UNIQUE value OF Outlet_Size
select distinct outlet_size from big_mart ;

#21.WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type
select distinct outlet_location_type from big_mart ;

#22.WRITE a query to show ALL UNIQUE value OF Outlet_Type
select distinct outlet_type from big_mart ;

#23.WRITE a query to show count NO. OF item BY Item_Type AND ordered 
#it IN descending
select Item_type , count(item_identifier) no_of_item from big_mart
group by Item_type order by no_of_item desc;

#24.WRITE a query to show count NO. OF item BY Outlet_Size AND 
#ordered it IN ascending
select outlet_size, count(item_identifier) no_of_Item from big_mart 
group by outlet_size order by no_of_item asc;

#25.WRITE a query to show count NO. OF item BY outlet_establishment_year and ordered
#it in ascending
select outlet_establishment_year, count(item_identifier) no_of_item from big_mart
group by Outlet_establisment_Year order by no_of_item asc;

#26.WRITE a query to show count NO. OF item BY Outlet_Type AND 
#ordered it IN descending
select outlet_type , count(item_identifier) no_of_item from big_mart
group by outlet_type order by no_of_item desc;

#27.WRITE a query to show count of item BY Outlet_Location_Type AND 
#ordered it IN descending
select outlet_location_type, count(item_identifier) no_of_item from big_mart
group by Outlet_Location_Type order by no_of_item desc;

#28.WRITE a query to show maximum MRP BY Item_type
select item_type , max(item_mrp) mrp from big_mart group by item_type; 

#29.WRITE a query to show minimum MRP BY Item_Type
select item_type, min(item_mrp) MRP from big_mart group by item_type;

#30.WRITE a query to show minimum MRP BY Outlet_Establishment_Year 
#AND ordered it IN descending
select outlet_establishment_year , min(item_mrp) MIN_MRP from big_mart
group by Outlet_establisment_Year order by min_mrp desc;

#31.WRITE a query to show maximum MRP BY Outlet_Establishment_Year 
#AND ordered IN descending
select outlet_establishment_year , max(item_mrp) max_mrp from big_mart
group by Outlet_establisment_Year order by max_mrp desc;

#32.WRITE a query to show average MRP BY Outlet_Size AND ordered IN 
#descending
select outlet_size ,avg(item_mrp) avg_mrp from big_mart
group by Outlet_size order by avg_mrp desc;

#33.WRITE a query to show average MRP BY Outlet_Size
select outlet_size , avg(item_mrp) average_mrp from big_mart
group by Outlet_size order by average_mrp ;

#34.WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending
select Outlet_Type , avg(item_mrp) avg_mrp from big_mart group by 
outlet_type order by avg_mrp asc;

#35.WRITE a query to show maximum MRP BY Outlet_Type
select outlet_type, max(item_mrp) max_mrp from big_mart group by Outlet_Type 
order by max_mrp;

#36.WRITE a query to show maximum Item_Weight BY Item_Type 
select item_type, max(item_weight) max_weight from big_mart group by 
Item_type order by Item_weight ;

#37.WRITE a query to show maximum Item_Weight BY 
#Outlet_Establishment_Year 
select outlet_establishment_year , max(item_weight) max_weight from big_mart 
group by Outlet_establisment_Year order by max_weight ; 

#38.WRITE a query to show minimum Item_Weight BY Outlet_Type 
select outlet_type, min(item_weight) min_weight from big_mart group by
outlet_type order by min_weight;

#39.WRITE a query to show average Item_Weight BY 
#Outlet_Location_Type ORDER BY descending
select Outlet_location_type, avg(item_weight) avg_weight from big_mart 
group by Outlet_Location_Type order by avg_weight desc;

#40.WRITE a query to show maximum Item_Outlet_Sales BY Item_Type
select item_type , max(item_outlet_sales) max_sales from big_mart group by item_type;

#41.WRITE a query to show minimum Item_Outlet_Sales BY Item_Type
select item_type , min(item_outlet_sales) min_sales from big_mart group by item_type;

#42.WRITE a query to show minimum Item_Outlet_Sales BY 
#Outlet_Establishment_Year
select outlet_establishment_year , min(item_outlet_sales) min_sales from big_mart
group by outlet_establishment_year;

#43.WRITE a query to show maximum Item_Outlet_Sales BY 
#Outlet_Establishment_Year ordered BY descending
select outlet_establishment_year, max(item_outlet_sales) max_sales from big_mart 
group by Outlet_establisment_Year order by max_sales desc;

#44.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size 
#AND ORDER it itn descending
select outlet_size , avg(item_outlet_sales) avg_sales from big_mart 
group by Outlet_size order by Item_Outlet_Sales desc;

#45.WRITE a query to show average Item_Outlet_Sales BY Outlet_Size 
select outlet_size, avg(item_outlet_sales) avg_sales from big_mart 
group by Outlet_size order by avg_sales desc;

#46.WRITE a query to show average Item_Outlet_Sales BY Outlet_Type
select outlet_type, avg(item_outlet_sales) avg_sales from big_mart 
group by Outlet_type order by avg_sales desc;

#47.WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type
select outlet_type, max(item_outlet_sales) max_sales from big_mart 
group by Outlet_type order by max_sales desc;

#48.WRITE a query to show total Item_Outlet_Sales BY 
select outlet_establishment_year, sum(item_outlet_sales) total_sales from big_mart 
group by Outlet_Establishment_Year order by Item_Outlet_Sales desc;

#49.WRITE a query to show total Item_Outlet_Sales BY Item_Type
select item_type, sum(item_outlet_sales) total_sales from big_mart 
group by item_type order by total_sales;

#50.WRITE a query to show total Item_Outlet_Sales BY 
select outlet_location_type , sum(item_outlet_sales) total_sales from big_mart 
group by Outlet_Location_Type order by total_sales asc;

#51.WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content
select item_fat_content, sum(item_outlet_sales) total_sales from big_mart 
group by item_fat_content order by Total_sales;

#52.WRITE a query to show maximum Item_Visibility BY Item_Type
select item_type, max(item_visibility) max_visibility from big_mart
group by item_type order by max_visibility;

#53.WRITE a query to show Minimum Item_Visibility BY Item_Type
select item_type, min(item_visibility) min_visibility from big_mart
group by item_type order by min_visibility desc;

#54.WRITE a query to show total Item_Outlet_Sales BY Item_Type but 
#ONLY WHERE Outlet_Location_Type IS Tier 1
select Outlet_Location_Type ,item_type, sum(item_outlet_sales) total_sales from big_mart
where Outlet_Location_Type = "tier 1" group by item_type order by total_sales;

#55.WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE 
#Item_Fat_Content IS ONLY Low Fat & Lf
select Item_Fat_Content ,item_type , sum(item_outlet_sales) total_sales from big_mart where 
Item_Fat_Content in ('low fat' , 'lf') group by item_type order by total_sales;








