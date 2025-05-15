
/*insert customer data*/
insert into customer values (Customer_ID_SEQ.NEXTVAL, 'Gebremariam', 'Yalem',  100, null, 3);
insert into customer values (Customer_ID_SEQ.NEXTVAL, 'Gebremariam', 'Yewoin',  null, null, 2);
insert into customer values (Customer_ID_SEQ.NEXTVAL, 'Habte', 'Kiflom',  25, null, 1);
insert into customer values (Customer_ID_SEQ.NEXTVAL, 'Bekila', 'Haile',  null, 'ramp accessible', 10);
insert into customer values (Customer_ID_SEQ.NEXTVAL, 'Lemma', 'Rahel',  null, null, 5);
insert into customer values (Customer_ID_SEQ.NEXTVAL, 'Smith', 'Mike',  300, null, 2);
insert into customer values (Customer_ID_SEQ.NEXTVAL, 'Tshige', 'Gebeyew',  null, 'water view', 12);
insert into customer values (Customer_ID_SEQ.NEXTVAL, 'Black', 'John',  null, null, 1);
insert into customer values (Customer_ID_SEQ.NEXTVAL, 'Kebede', 'Betty',  5, null, 1);
insert into customer values (Customer_ID_SEQ.NEXTVAL, 'Dante', 'Kevin',  50, 'balcony', 5);

commit;

/*insert hotel reservation data*/
insert into Hotel_Reservation values (Hotel_reservation_no_SEQ.NEXTVAL, 'Gebremariam', 144,  2, 3, 3, (select Customer_ID from customer where L_name = 'Gebremariam' and F_name = 'Yalem'));
insert into Hotel_Reservation values (Hotel_reservation_no_SEQ.NEXTVAL, 'Gebremariam', 200,  1, 1, 2, (select Customer_ID from customer where L_name = 'Gebremariam' and F_name = 'Yewoin'));
insert into Hotel_Reservation values (Hotel_reservation_no_SEQ.NEXTVAL, 'Habte', 100,  3, 5, 1, (select Customer_ID from customer where L_name = 'Habte' and F_name = 'Kiflom'));
insert into Hotel_Reservation values (Hotel_reservation_no_SEQ.NEXTVAL, 'Bekila', 12,  1, 2, 10, (select Customer_ID from customer where L_name = 'Bekila' and F_name = 'Haile'));
insert into Hotel_Reservation values (Hotel_reservation_no_SEQ.NEXTVAL, 'Lemma', 145,  2, 2, 5, (select Customer_ID from customer where L_name = 'Lemma' and F_name = 'Rahel'));
insert into Hotel_Reservation values (Hotel_reservation_no_SEQ.NEXTVAL, 'Smith', 36,  1, 1, 2, (select Customer_ID from customer where L_name = 'Smith' and F_name = 'Mike'));
insert into Hotel_Reservation values (Hotel_reservation_no_SEQ.NEXTVAL, 'Tshige', 101, 3, 3, 12, (select Customer_ID from customer where L_name = 'Tshige' and F_name = 'Gebeyew'));
insert into Hotel_Reservation values (Hotel_reservation_no_SEQ.NEXTVAL, 'Black', 29,  1, 2, 1, (select Customer_ID from customer where L_name = 'Black' and F_name = 'John'));
insert into Hotel_Reservation values (Hotel_reservation_no_SEQ.NEXTVAL, 'Kebede', 205,  2, 2 , 1, (select Customer_ID from customer where L_name = 'Kebede' and F_name = 'Betty'));
insert into Hotel_Reservation values (Hotel_reservation_no_SEQ.NEXTVAL, 'Dante', 206,  1, 1, 5, (select Customer_ID from customer where L_name = 'Dante' and F_name = 'Kevin'));

commit;

/*insert flight reservation data*/
insert into Flight_Reservation values (Flight_reservation_no_SEQ.NEXTVAL, 1, 'Gebremariam', 'two way', TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Gebremariam' and F_name = 'Yalem'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'));
insert into  Flight_Reservation values (Flight_reservation_no_SEQ.NEXTVAL, 2, 'Gebremariam', 'two way', TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Gebremariam' and F_name = 'Yewoin'),  TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'));
insert into  Flight_Reservation values (Flight_reservation_no_SEQ.NEXTVAL, 3, 'Habte', 'two way',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'),  (select Customer_ID from customer where L_name = 'Habte' and F_name = 'Kiflom'),  TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'));
insert into  Flight_Reservation values (Flight_reservation_no_SEQ.NEXTVAL, 4, 'Bekila', 'two way',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Bekila' and F_name = 'Haile'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'));
insert into  Flight_Reservation values (Flight_reservation_no_SEQ.NEXTVAL, 5, 'Lemma', 'two way',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Lemma' and F_name = 'Rahel'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'));
insert into  Flight_Reservation values (Flight_reservation_no_SEQ.NEXTVAL, 6, 'Smith', 'two way',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Smith' and F_name = 'Mike'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'));
insert into  Flight_Reservation values (Flight_reservation_no_SEQ.NEXTVAL, 2, 'Tshige', 'two way',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Tshige' and F_name = 'Gebeyew'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'));
insert into  Flight_Reservation values (Flight_reservation_no_SEQ.NEXTVAL, 3, 'Black', 'two way',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'),  (select Customer_ID from customer where L_name = 'Black' and F_name = 'John'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'));
insert into  Flight_Reservation values (Flight_reservation_no_SEQ.NEXTVAL, 5, 'Kebede', 'two way',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Kebede' and F_name = 'Betty'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'));
insert into  Flight_Reservation values (Flight_reservation_no_SEQ.NEXTVAL, 1, 'Dante', 'two way',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Dante' and F_name = 'Kevin'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'));

commit;

/*insert rental car reservation*/
insert into RentalCar_Reservation values (Car_reservation_no_SEQ.NEXTVAL,  'Gebremariam', 'G12', 'Toyota Corolla', TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Gebremariam' and F_name = 'Yalem'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), 1);
insert into RentalCar_Reservation values (Car_reservation_no_SEQ.NEXTVAL,  'Gebremariam', 'G13', 'Toyota Camry', TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Gebremariam' and F_name = 'Yewoin'),  TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), 2);
insert into RentalCar_Reservation values (Car_reservation_no_SEQ.NEXTVAL,  'Habte', 'H12', 'Toyota Rav4',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'),  (select Customer_ID from customer where L_name = 'Habte' and F_name = 'Kiflom'),  TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), 3);
insert into RentalCar_Reservation values (Car_reservation_no_SEQ.NEXTVAL,  'Bekila', 'B12', 'Volvo XC40',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Bekila' and F_name = 'Haile'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), 4);
insert into RentalCar_Reservation values (Car_reservation_no_SEQ.NEXTVAL,  'Lemma', 'L12', 'Ford Mustang',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Lemma' and F_name = 'Rahel'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), 5);
insert into RentalCar_Reservation values (Car_reservation_no_SEQ.NEXTVAL,  'Smith', 'S12', 'Ford Edge',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Smith' and F_name = 'Mike'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), 6);
insert into RentalCar_Reservation values (Car_reservation_no_SEQ.NEXTVAL,  'Tshige', 'T12', 'Ford Escape',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Tshige' and F_name = 'Gebeyew'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), 7);
insert into RentalCar_Reservation values (Car_reservation_no_SEQ.NEXTVAL,  'Black', 'B12', 'Ford Expolrer',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'),  (select Customer_ID from customer where L_name = 'Black' and F_name = 'John'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), 8);
insert into RentalCar_Reservation values (Car_reservation_no_SEQ.NEXTVAL,  'Kebede', 'K12', 'Dodge Charger',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Kebede' and F_name = 'Betty'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), 9);
insert into RentalCar_Reservation values (Car_reservation_no_SEQ.NEXTVAL,  'Dante', 'D12', 'Dodge Journey',  TO_DATE('30-JAN-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), (select Customer_ID from customer where L_name = 'Dante' and F_name = 'Kevin'), TO_DATE('02-Feb-2023 10:18:00','DD-MON-YYYY HH24:MI:SS'), 10);

commit;

/*insert reservation account data*/
insert into ReservationAccount values (Reservation_no_SEQ.NEXTVAL, 'Gebremariam', 'All',  2, 300, 3, 1, (select Customer_ID from customer where L_name = 'Gebremariam' and F_name = 'Yalem'));
insert into ReservationAccount values (Reservation_no_SEQ.NEXTVAL, 'Gebremariam', 'All',  1, 100, 2, 2,  (select Customer_ID from customer where L_name = 'Gebremariam' and F_name = 'Yewoin'));
insert into ReservationAccount values (Reservation_no_SEQ.NEXTVAL, 'Habte', 'All',  3, 500, 1, 3, (select Customer_ID from customer where L_name = 'Habte' and F_name = 'Kiflom'));
insert into ReservationAccount values (Reservation_no_SEQ.NEXTVAL, 'Bekila', 'All',  1, 200, 1, 4,  (select Customer_ID from customer where L_name = 'Bekila' and F_name = 'Haile'));
insert into ReservationAccount values (Reservation_no_SEQ.NEXTVAL, 'Lemma', 'All',  2, 200, 2, 5,  (select Customer_ID from customer where L_name = 'Lemma' and F_name = 'Rahel'));
insert into ReservationAccount values (Reservation_no_SEQ.NEXTVAL, 'Smith', 'All',  1, 100, 2, 6,  (select Customer_ID from customer where L_name = 'Smith' and F_name = 'Mike'));
insert into ReservationAccount values (Reservation_no_SEQ.NEXTVAL, 'Tshige', 'All', 3, 300, 2, 7, (select Customer_ID from customer where L_name = 'Tshige' and F_name = 'Gebeyew'));
insert into ReservationAccount values (Reservation_no_SEQ.NEXTVAL, 'Black', 'All', 1, 200, 1, 8, (select Customer_ID from customer where L_name = 'Black' and F_name = 'John'));
insert into ReservationAccount values (Reservation_no_SEQ.NEXTVAL, 'Kebede', 'All',  2, 200 , 1, 9,  (select Customer_ID from customer where L_name = 'Kebede' and F_name = 'Betty'));
insert into ReservationAccount values (Reservation_no_SEQ.NEXTVAL, 'Dante', 'All',  1, 100, 1, 10,  (select Customer_ID from customer where L_name = 'Dante' and F_name = 'Kevin'));

commit;

/* 20 SQL Queries */
-- Q1. Select all columns and all rows from one table
SELECT * FROM Flight_Reservation;

-- Q2. Select five columns and all rows from one table
SELECT Flight_Reservation_NO, Seat_NO, L_Name, Flight_Type, date_flight_departed
FROM Flight_Reservation;

-- Q3. Select all columns from all rows from one view
SELECT * FROM Multiple_Reservation;

-- Q4. Using a join on 2 tables, select all columns and all rows
SELECT * FROM Customer LEFT OUTER JOIN Flight_Reservation ON Customer.Customer_id = Flight_Reservation.Customer_id;

-- Q5. Select and order data retrieved from one table
SELECT * FROM Flight_Reservation
ORDER BY L_Name;

-- Q6. Using a join on 3 tables, select 5 columns from the 3 tables.  Use syntax that would limit the output to 10 rows
SELECT Flight_Reservation.Seat_NO, Customer.L_Name, Customer.F_Name, Customer.Length_Stay, Hotel_Reservation.no_bedrooms
FROM Flight_Reservation INNER JOIN Customer ON Flight_Reservation.Customer_id = Customer.Customer_id
            INNER JOIN Hotel_Reservation ON Hotel_Reservation.L_Name = Customer.L_name
FETCH FIRST 10 ROWS ONLY;

-- Q7. Select distinct rows using joins on 3 tables
SELECT DISTINCT *
FROM Flight_Reservation INNER JOIN Customer ON Flight_Reservation.Customer_id = Customer.Customer_id
                        INNER JOIN Hotel_Reservation ON Hotel_Reservation.Customer_ID = Customer.Customer_ID;
            
-- Q8. Use GROUP BY and HAVING in a select statement using one or more tables
SELECT Flight_Reservation.Seat_no, AVG(ReservationAccount.R_Cost_DollarAmount)
FROM Flight_Reservation INNER JOIN ReservationAccount ON ReservationAccount.Customer_ID = Flight_Reservation.Customer_id
GROUP BY Flight_Reservation.Seat_NO, Flight_Reservation.L_Name
HAVING Flight_Reservation.L_Name = 'Gebremariam';

-- Q9. Use IN clause to select data from one or more tables
SELECT * FROM Customer
WHERE Customer_id IN (121, 122, 123);

-- Q10. Select length of one column from one table (use LENGTH function)
SELECT LENGTH(Customer_ID) FROM Customer; 

-- Q11. Delete one record from one table.  Use select statements to demonstrate the table contents before and after the DELETE statement.  Make sure you use ROLLBACK afterwards so that the data will not be physically removed
SELECT * FROM ReservationAccount;
DELETE FROM ReservationAccount
WHERE Card_no = 8;
SELECT * FROM ReservationAccount;
ROLLBACK;

-- Q12. Update one record from one table.  Use select statements to demonstrate the table contents before and after the UPDATE statement.  Make sure you use ROLLBACK afterwards so that the data will not be physically removed
SELECT * FROM Customer;
UPDATE Customer
SET special_requests = 'Perks'
WHERE F_name = 'Gebeyew';
SELECT * FROM Customer;
ROLLBACK;

/*13. Advanced queries*/
--Row subquery, max number of bedrooms available for hotel reservation
SELECT *FROM Hotel_Reservation
WHERE no_bedrooms = (SELECT MAX(no_bedrooms)  FROM Hotel_Reservation);

--selecting/displaying the amount of the second highest no of bedrooms 
SELECT MAX(no_bedrooms) FROM hotel_reservation WHERE no_bedrooms < (SELECT MAX(no_bedrooms) FROM hotel_reservation);

--return all records from the left table and also from the right table
SELECT * FROM Hotel_Reservation hotl
FULL OUTER JOIN flight_reservation flight
ON hotl.customer_id = flight.customer_id;

--return different reservation numbers from the three reservation tables for customers
SELECT
  hotel_reservation.l_name,
  hotel_reservation.hotel_reservation_no,
  rentalcar_reservation.car_reservation_no,
  flight_reservation.flight_reservation_no
FROM hotel_reservation
JOIN flight_reservation
  ON hotel_reservation.customer_id = flight_reservation.customer_id
JOIN rentalcar_reservation
  ON rentalcar_reservation.customer_id = flight_reservation.customer_id;
  
  --return number of bedrooms tht have atleast 2 beeds and 2 bedrooms
select no_bedrooms, count(distinct no_beds)
from hotel_reservation hot
where exists (
  select * from hotel_reservation
  where no_beds = hot.no_beds 
    and no_bedrooms =2)
group by no_bedrooms

--returns the number of bedrooms 
SELECT COUNT(reservation_no), no_guests
FROM ReservationAccount
GROUP BY no_guests
HAVING COUNT (reservation_no) > 2
ORDER BY COUNT(reservation_no) DESC;

--return customers with similar last name
SELECT A.F_name AS First_name1, B.F_name AS F_name2, A.L_name
FROM Customer A, Customer B
WHERE A.Customer_ID <> B.Customer_ID
AND A.L_Name = B.L_name
ORDER BY A.L_Name;

--return the minimum number of bedrooms available
SELECT *FROM Hotel_Reservation
WHERE no_bedrooms = (SELECT min(no_bedrooms)  FROM Hotel_Reservation);
 
