create database Ola;
Use Ola;

#1. Retrive all successful bookings:
create View Sucessful_Bookings as
select * from bookings
where Booking_Status = 'Success';

select * from Sucessful_Bookings;

#2. Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as
select Vehicle_Type, avg(Ride_Distance)
as avg_distance from bookings
group by Vehicle_Type;

select * from ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
create view canceled_by_customer as
select count(*) from bookings
where Booking_Status = 'Canceled by Customer';

select * from canceled_by_customer;

#4.  List the top 5 customers who booked the highest number of rides:
create view Top_5_Customers as
select Customer_ID, count(Booking_ID) as total_rides
from bookings
group by Customer_ID 
order by total_rides desc limit 5;

select * from Top_5_Customers;

#5.  Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View Rides_cancelled_by_Drivers_P_C_Issues As
SELECT COUNT(*) FROM bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

 Select * from Rides_cancelled_by_Drivers_P_C_Issues;

 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 Create View Max_Min_Driver_Rating As
 SELECT MAX(Driver_Ratings) as max_rating,
 MIN(Driver_Ratings) as min_rating
 FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

 Select * from Max_Min_Driver_Rating;
 
  #7. Retrieve all rides where payment was made using UPI:
 Create View UPI_Payment As
 SELECT * FROM bookings
 WHERE Payment_Method = 'UPI';
 
  Select * from UPI_Payment;
  
#8. Find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings
group by Vehicle_Type;
 
Select * from avg_cust_rating;

 #9. Calculate the total booking value of rides completed successfully:
 Create View total_successful_ride_value As
 SELECT SUM(Booking_Value) as total_successful_ride_value
 FROM bookings
 WHERE Booking_Status = 'Success';

select * from total_successful_ride_value;

 #10. List all incomplete rides along with the reason:
 Create View Incomplete_Rides_Reason As
 SELECT Booking_ID, Incomplete_Rides_Reason
 FROM bookings
 WHERE Incomplete_Rides = 'Yes';
 
 select * from incomplete_rides_reason;
 
  #1. Retrieve all successful bookings:
 Select * From sucessful_bookings;
 #2. Find the average ride distance for each vehicle type:
 Select * from ride_distance_for_each_vehicle;
 #3. Get the total number of cancelled rides by customers:
 Select * from cancelled_rides_by_customers;
 #4. List the top 5 customers who booked the highest number of rides:
 Select * from Top_5_Customers;
 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 Select * from Rides_cancelled_by_Drivers_P_C_Issues;
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 Select * from Max_Min_Driver_Rating;
 #7. Retrieve all rides where payment was made using UPI:
 Select * from UPI_Payment;
 #8. Find the average customer rating per vehicle type:
 Select * from AVG_Cust_Rating;
 #9. Calculate the total booking value of rides completed successfully:
 Select * from total_successful_ride_value;
 #10. List all incomplete rides along with the reason:
 Select * from Incomplete_Rides_Reason;
 
 
 















