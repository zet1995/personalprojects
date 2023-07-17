select distinct name from people
join passengers on people.passport_number = passengers.passport_number
where people.passport_number in (
    select passport_number from passengers
    join flights on flights.id = passengers.flight_id
    where flights.id = (
        select id from flights
        where year =2021 and month = 7 and day = 29 and origin_airport_id  = (
            select id from airports where city = "Fiftyville")
            order by hour, minute limit 1));