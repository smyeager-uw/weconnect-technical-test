SELECT origin_city FROM FLIGHTS WHERE origin_city NOT IN 
(SELECT DISTINCT origin_city FROM (SELECT DISTINCT firstLeg.origin_city  
FROM FLIGHTS AS firstLeg JOIN FLIGHTS AS secLeg 
WHERE firstLeg.dest_city = secLeg.origin_city AND 
secLeg.dest_city = "Seattle WA") 
UNION 
SELECT DISTINCT origin_city FROM FLIGHTS WHERE dest_city = 'Seattle WA')