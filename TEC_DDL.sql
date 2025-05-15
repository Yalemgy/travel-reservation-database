/* DROP statements to clean up objects from previous run */
--Dropping tables
DROP TABLE Customer CASCADE CONSTRAINTS;
DROP TABLE Hotel_reservation CASCADE CONSTRAINTS;
DROP TABLE Flight_reservation CASCADE CONSTRAINTS;
DROP TABLE RentalCar_reservation CASCADE CONSTRAINTS;
DROP TABLE ReservationAccount CASCADE CONSTRAINTS;

--Dropping sequences
DROP SEQUENCE Customer_ID_SEQ;
DROP SEQUENCE Hotel_reservation_no_SEQ;
DROP SEQUENCE Flight_reservation_no_SEQ;
DROP SEQUENCE Car_reservation_no_SEQ;
DROP SEQUENCE Reservation_no_SEQ; 

--Dropping views
DROP VIEW multiple_reservation;
DROP VIEW UNPAID_ACCOUNT;

--Creating tables 
CREATE TABLE Customer
 (Customer_ID VARCHAR2(30) NOT NULL PRIMARY KEY
 ,L_NAME VARCHAR2(25)
 ,F_NAME VARCHAR2(25)
 ,Balance VARCHAR2(25)
 ,Special_requests VARCHAR2(25)
 ,Length_Stay NUMBER(30,0)
 );

CREATE TABLE ReservationAccount
 (Reservation_no NUMBER(7,0) NOT NULL PRIMARY KEY
 ,L_NAME VARCHAR2(25)
 ,Reservaton_typ VARCHAR2(25)
 ,No_reservation VARCHAR2(25)
 ,R_Cost_DollarAmount VARCHAR2(50)
 ,No_guests VARCHAR2(5)
 ,Card_no VARCHAR2(15)
 ,Customer_ID VARCHAR2(30),
 FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID)
 );

CREATE TABLE RentalCar_reservation
 (Car_reservation_no NUMBER(7,0) NOT NULL PRIMARY KEY 
 ,L_NAME VARCHAR2(25)
 ,License_no VARCHAR2(25)
 ,Make_model_car VARCHAR2(25)
 ,PickUp_DATE DATE
 ,Customer_ID VARCHAR2(30),
 FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID)
 ,DropOff_DATE DATE
 ,Card_no VARCHAR2(15)
  );

CREATE TABLE Flight_reservation
 (Flight_reservation_no NUMBER(7,0) NOT NULL PRIMARY KEY 
 ,seat_no VARCHAR2(25)
 ,L_NAME VARCHAR2(25)
 ,Flight_type VARCHAR2(25)
 ,Date_Flight_departed DATE
 ,Customer_ID VARCHAR2(30),
 FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID)
 ,DATE_flight_arrived DATE
  );

CREATE TABLE Hotel_reservation
 (Hotel_reservation_no NUMBER(7,0) NOT NULL PRIMARY KEY
 ,L_NAME VARCHAR2(25)
 ,Room_no VARCHAR2(25)
 ,no_bedrooms NUMBER (3,0)
 ,no_beds NUMBER (6,0)
 ,no_nights NUMBER (30,0)  
 ,Customer_ID VARCHAR2(30),
 FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID)
 );

--Creating indexes
CREATE INDEX RES_Customer_ID_FK ON ReservationAccount(Customer_ID);
CREATE INDEX REN_Customer_ID_FK ON RentalCar_reservation(Customer_ID);
CREATE INDEX Fli_Customer_ID_FK ON Flight_reservation(Customer_ID);
CREATE INDEX HOT_Customer_ID_FK ON Hotel_reservation(Customer_ID);

/*This view shows balance, customer id of accounts that have outstanding balance*/
CREATE VIEW Unpaid_Account AS
SELECT Balance, Customer_ID
FROM Customer
WHERE Balance != 0;

/*This view shows number of reservations, reservation number of customers that have more than one reservations*/
CREATE VIEW multiple_reservation AS
SELECT No_reservation, Reservation_no
FROM ReservationAccount
WHERE No_reservation > 1;

--creating sequences
CREATE SEQUENCE Customer_ID_SEQ
 INCREMENT BY 1
 START WITH 100
 NOMAXVALUE
 MINVALUE 1
 NOCYCLE
 NOCACHE;
 
 CREATE SEQUENCE Reservation_no_SEQ
 INCREMENT BY 1
 START WITH 500
 NOMAXVALUE
 MINVALUE 1
 NOCYCLE
 NOCACHE; 
 
 CREATE SEQUENCE Car_reservation_no_SEQ
 INCREMENT BY 1
 START WITH 1000
 NOMAXVALUE
 MINVALUE 1
 NOCYCLE
 NOCACHE; 
 
CREATE SEQUENCE Flight_reservation_no_SEQ
 INCREMENT BY 1
 START WITH 2000
 NOMAXVALUE
 MINVALUE 1
 NOCYCLE
 NOCACHE; 
 
 CREATE SEQUENCE Hotel_reservation_no_SEQ
 INCREMENT BY 1
 START WITH 3000
 NOMAXVALUE
 MINVALUE 1
 NOCYCLE
 NOCACHE;
 
 /*This trigger populates the primary key and audit columns with appropriate values*/
 CREATE OR REPLACE TRIGGER Customer_ID_TRG
  BEFORE INSERT ON Customer
  FOR EACH ROW
BEGIN
  
  IF :NEW.Customer_ID IS NULL THEN
    :NEW.Customer_ID := Customer_ID_SEQ.NEXTVAL;
  END IF;  
  END;
  /
  /*This trigger populates the primary key and audit columns with appropriate values*/
 CREATE OR REPLACE TRIGGER Reservation_no_TRG
  BEFORE INSERT ON ReservationAccount
  FOR EACH ROW
BEGIN
  
  IF :NEW.Reservation_no IS NULL THEN
    :NEW.Reservation_no := Reservation_no_SEQ.NEXTVAL;
  END IF;  
  END; 
  /
/*This trigger populates the primary key and audit columns with appropriate values*/  
 CREATE OR REPLACE TRIGGER Car_reservation_no_TRG
  BEFORE INSERT ON RentalCar_reservation
  FOR EACH ROW
BEGIN
  
  IF :NEW.Car_reservation_no IS NULL THEN
    :NEW.Car_reservation_no := Car_reservation_no_SEQ.NEXTVAL;
  END IF;  
  END;
/
/*This trigger populates the primary key and audit columns with appropriate values*/
 CREATE OR REPLACE TRIGGER Flight_reservation_no_TRG
  BEFORE INSERT ON Flight_reservation
  FOR EACH ROW
BEGIN
  
  IF :NEW.Flight_reservation_no IS NULL THEN
    :NEW.Flight_reservation_no := Flight_reservation_no_SEQ.NEXTVAL;
  END IF;  
  END;
  /

/*This trigger populates the primary key and audit columns with appropriate values*/  
   CREATE OR REPLACE TRIGGER Hotel_reservation_no_TRG
  BEFORE INSERT ON Hotel_reservation
  FOR EACH ROW
BEGIN
  
  IF :NEW.Hotel_reservation_no IS NULL THEN
    :NEW.Hotel_reservation_no := Hotel_reservation_no_SEQ.NEXTVAL;
  END IF;  
  END; 
  /
-- Check the DBMS data dictionary to make sure that all objects have been created successfully
SELECT TABLE_NAME FROM USER_TABLES;  
SELECT OBJECT_NAME, STATUS, CREATED, LAST_DDL_TIME FROM USER_OBJECTS;
