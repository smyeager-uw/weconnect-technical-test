SELECT DISTINCT flight_num 
FROM FLIGHTS 
WHERE origin_city = "Seattle WA" AND 
dest_city = "Boston MA" AND 
day_of_week_id = 1;