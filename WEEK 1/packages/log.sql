
-- *** The Lost Letter ***


select id, contents, from_address_id from packages where "contents" like '%letter%';


select * from addresses where "id" = 432;


select * from scans where "package_id" = 384;


select * from addresses where "id" = 854;




-- *** The Devious Delivery ***



select id, contents, from_address_id, to_address_id from packages 
where "contents" like '%duck%';


select * from scans where "package_id" =5098;


select * from addresses where "id" = 348;




-- *** The Forgotten Gift ***



select * from addresses where "address" = '109 Tileston Street';


select * from packages where from_address_id = 9873;


select * from scans where "package_id" = 9523;


select name from drivers where id = 17;
