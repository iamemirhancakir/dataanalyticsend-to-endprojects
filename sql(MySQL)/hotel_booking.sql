SELECT * FROM demo.hotel_booking;
select hotel, name, arrival_date_month from demo.hotel_booking where arrival_date_month = "June" or arrival_date_month = "July";
select name, country, reservation_status, market_segment from demo.hotel_booking where market_segment like "Online%";
select hotel, country, stays_in_week_nights, reserved_room_type, assigned_room_type from demo.hotel_booking order by assigned_room_type asc ;
select * from demo.hotel_booking where adr between 100 and 150 order by adr desc  ; 
select name, email, country, hotel from demo.hotel_booking where country in ("GBR", "USA");
select concat_ws(" - ", name, email) as Kullanıcı_Bilgileri from demo.hotel_booking;
select sum(lead_time) as total_lead_time from demo.hotel_booking;
select count(name) as total_customers from demo.hotel_booking;
select avg(agent) as avg_agent from demo.hotel_booking;
select max(agent) as max_agent from demo.hotel_booking;
select min(adr) as min_adr from demo.hotel_booking;
select truncate(agent,0) as agent from demo.hotel_booking;
select day(reservation_status_date) as reservation_dates from demo.hotel_booking;
select lead_time,
case
	when lead_time < 50 then "bad"
    else "good"
end as good_or_bad
 from demo.hotel_booking;
select country,count(name) from demo.hotel_booking group by country;



