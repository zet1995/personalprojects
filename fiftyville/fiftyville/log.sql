-- Keep a log of any SQL queries you execute as you solve the mystery.
.schema
select * from crime_scene_reports;
select * from interviews;
select * from interviews ORDER BY month;

SELECT * FROM atm_transactions WHERE month= 7 order by day;

--Sometime within ten minutes of the theft, I saw the thief get into a car in the bakery parking lot and drive away.
--If you have security footage from the bakery parking lot, you might want to look for cars that left the parking lot in that time frame.
SELECT name from bakery_security_logs
JOIN people ON bakery_security_logs.license_plate = people.license_plate
WHERE people.license_plate IN(
    SELECT license_plate FROM bakery_security_logs
    WHERE month = 7 AND DAY = 28 AND hour = 10 AND minute BETWEEN 15 AND 25)
    AND activity = "exit";

--I don't know the thief's name, but it was someone I recognized. Earlier this morning, before I arrived at Emma's bakery,
--I was walking by the ATM on Leggett Street and saw the thief there withdrawing some money.
SELECT name FROM bank_accounts
JOIN people ON bank_accounts.person_id =people.id
where account_number IN (
    SELECT account_number FROM atm_transactions
    WHERE month= 7 AND atm_location= "Leggett Street" AND transaction_type = "withdraw" AND day =28  order by day);


--In the call, I heard the thief say that they were planning to take the earliest flight out of Fiftyville tomorrow.
--The thief then asked the person on the other end of the phone to purchase the flight ticket.
SELECT name FROM people
JOIN passengers ON passengers.passport_number = people.passport_number
WHERE people.passport_number IN(
    SELECT passport_number FROM flights
    JOIN passengers ON flights.id = passengers.flight_id
    where flight_id in(
        SELECT id FROM flights WHERE month = 7 AND day = 29 order BY hour limit 1));

--As the thief was leaving the bakery, they called someone who talked to them for less than a minute.
SELECT DISTINCT name FROM people
JOIN phone_calls ON people.phone_number = phone_calls.caller
WHERE people.phone_number IN(
    SELECT caller FROM phone_calls WHERE month = 7 AND day = 28 and duration < 60);
-- where they escaped to:
SELECT city FROM airports
WHERE ID = (
    SELECT destination_airport_id FROM flights
    WHERE year = 2021 and month = 7 and day = 29 and origin_airport_id =(
        select id from airports where city = "Fiftyville")
        ORDER BY hour, minute
        LIMIT 1);
--Get Bruce phone number
SELECT phone_number FROM people WHERE name = "Bruce";
--The name of the person that Bruce called to get the plane tickets
SELECT name FROM people WHERE phone_number = (
    SELECT receiver FROM phone_calls
    WHERE year= 2021 AND month = 7 AND day = 28 AND caller = "(367) 555-5533");
