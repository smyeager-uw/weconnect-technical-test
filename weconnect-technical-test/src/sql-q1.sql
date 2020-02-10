SELECT CARRIERS.name AS "carrier", max(price) AS "max_price" 
FROM FLIGHTS JOIN CARRIERS ON FLIGHTS.carrier_id = CARRIERS.cid 
WHERE (origin_city = "New York NY" AND dest_city = "Seattle WA") OR 
(origin_city = "Seattle WA" AND dest_city = "New York NY") ;