
-- Creating a table for Agents --  

CREATE TABLE customer_db.AGENTS
   (	
    AGENT_CODE CHAR(6) NOT NULL PRIMARY KEY, 
	AGENT_NAME CHAR(40), 
	WORKING_AREA CHAR(35), 
	COMMISSION Decimal(10,2), -- Here 10 is the precision(value before decimal point) and 2 is the scale(value after the decimal point) 
	PHONE_NO CHAR(15), 
	COUNTRY VARCHAR(25) 
	 );

-- Inserting data into Agents table --
     
INSERT INTO customer_db.AGENTS (AGENT_CODE, AGENT_NAME, WORKING_AREA, COMMISSION, PHONE_NO, COUNTRY)
VALUES ('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', ''),
       ('A003', 'Alex', 'London', '0.13', '075-12458969', ''),
       ('A008', 'Alford', 'New York', '0.12', '044-25874365', ''),
       ('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', ''),
       ('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', ''),
       ('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', ''),
       ('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', ''),
       ('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', ''),
       ('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', ''),
       ('A006', 'McDen', 'London', '0.15', '078-22255588', ''),
       ('A004', 'Ivan', 'Torento', '0.15', '008-22544166', ''),
       ('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '');

-- Creating a table for Agents --

CREATE TABLE customer_db.CUSTOMER (
    C_CODE VARCHAR(6) NOT NULL PRIMARY KEY,
    C_NAME VARCHAR(40) NOT NULL,
    C_CITY CHAR(35),
    WORKING_AREA VARCHAR(35) NOT NULL,
    C_COUNTRY VARCHAR(20) NOT NULL,
    GRADE DECIMAL(10,0),
    T_Due DECIMAL(12,2) NOT NULL,
    RECEIVE_AMT DECIMAL(12,2) NOT NULL,
    PAYMENT_AMT DECIMAL(12,2) NOT NULL,
    Return_AMT DECIMAL(12,2) NOT NULL,    
    PHONE_NO VARCHAR(17) NOT NULL,
    AGENT_CODE CHAR(6) NOT NULL,
    FOREIGN KEY (`AGENT_CODE`) REFERENCES `AGENTS`(`AGENT_CODE`)
);

-- Inserting data into Customer table --

INSERT INTO customer_db.CUSTOMER VALUES ('C00013', 'Holmes', 'London', 'London', 'UK', '2', '12000.00', '15000.00', '12000.00', '3000.00', 'BBBBBBB', 'A003');
INSERT INTO customer_db.CUSTOMER VALUES ('C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3500.00', '5000.00', '3500.00', '1500.00', 'CCCCCCC', 'A008');
INSERT INTO customer_db.CUSTOMER VALUES ('C00020', 'Albert', 'New York', 'New York', 'USA', '3', '5000.00', '5000.00', '5000.00', '0000.00', 'BBBBSBB', 'A008');
INSERT INTO customer_db.CUSTOMER VALUES ('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', '2', '20200.00', '21000.00', '20200.00', '800.00', 'AVAVAVA', 'A011');
INSERT INTO customer_db.CUSTOMER VALUES ('C00024', 'Cook', 'London', 'London', 'UK', '2', '3500.00', '5000.00', '3500.00', '1500.00', 'FSDDSDF', 'A006');
INSERT INTO customer_db.CUSTOMER VALUES ('C00015', 'Stuart', 'London', 'London', 'UK', '1', '9000.00', '10000.00', '9000.00', '1000.00', 'GFSGERS', 'A003');
INSERT INTO customer_db.CUSTOMER VALUES ('C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '3500.00', '5000.00', '3500.00', '1500.00', 'DDNRDRH', 'A008');
INSERT INTO customer_db.CUSTOMER VALUES ('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', '2', '3500.00', '5000.00', '3500.00', '1500.00', 'NHBGVFC', 'A005');
INSERT INTO customer_db.CUSTOMER VALUES ('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', '1', '3500.00', '5000.00', '3500.00', '1500.00', 'WERTGDF', 'A005');
INSERT INTO customer_db.CUSTOMER VALUES ('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', '1', '7000.00', '8000.00', '7000.00', '1000.00', 'ZZZZBFV', 'A010');
INSERT INTO customer_db.CUSTOMER VALUES ('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '1', '11000.00', '15000.00', '11000.00', '4000.00', '147-25896312', 'A002');
INSERT INTO customer_db.CUSTOMER VALUES ('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', '1', '7000.00', '11000.00', '7000.00', '4000.00', 'GHRDWSD', 'A010');
INSERT INTO customer_db.CUSTOMER VALUES ('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', '2', '7000.00', '11000.00', '7000.00', '4000.00', '113-12345678','A002');
INSERT INTO customer_db.CUSTOMER VALUES ('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '5000.00', '3000.00', 'AAAAAAA', 'A005');
INSERT INTO customer_db.CUSTOMER VALUES ('C00023', 'Karl', 'London', 'London', 'UK', '0', '4000.00', '6000.00', '4000.00', '2000.00', 'AAAABAA', 'A006');
INSERT INTO customer_db.CUSTOMER VALUES ('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', '1', '10000.00', '17000.00', '10000.00', '7000.00', 'DDDDDDD', 'A004');
INSERT INTO customer_db.CUSTOMER VALUES ('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', '3', '6000.00', '6500.00', '6000.00', '500.00', 'MMMMMMM', 'A009');
INSERT INTO customer_db.CUSTOMER VALUES ('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', '2', '8100.00', '8150.00', '8100.00', '50.00', 'AAAAAAB', 'A007');
INSERT INTO customer_db.CUSTOMER VALUES ('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', '1', '5000.00', '7000.00', '5000.00', '2000.00', 'KRFYGJK', 'A012');
INSERT INTO customer_db.CUSTOMER VALUES ('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', '1', '7000.00', '7000.00', '7000.00', '0.00', 'HJKORED', 'A004');
INSERT INTO customer_db.CUSTOMER VALUES ('C00003', 'Martin', 'Torento', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '-1000.00', 'MJYURFD', 'A004');
INSERT INTO customer_db.CUSTOMER VALUES ('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', '3', '8000.00', '10000.00', '8000.00', '2000.00', 'Phone No', 'A002');
INSERT INTO customer_db.CUSTOMER VALUES ('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '8000.00', '3000.00', 'AAAATGF', 'A001');
INSERT INTO customer_db.CUSTOMER VALUES ('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '8000.00', '3000.00', 'JRTVFDD', 'A007');
INSERT INTO customer_db.CUSTOMER VALUES ('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', '3', '12000.00', '15000.00', '12000.00', '3000.00', 'PPHGRTS', 'A010');

-- Creating a table for Orders --customer

CREATE TABLE customer_db.ORDERS (
  ORD_NUM INT NOT NULL PRIMARY KEY,
  ORD_AMOUNT DECIMAL(12,2) NOT NULL,
  ADVANCE_AMOUNT DECIMAL(12,2) NOT NULL,
  ORD_DATE DATE NOT NULL,
  C_CODE VARCHAR(6) NOT NULL,
  AGENT_CODE CHAR(6) NOT NULL,
  ORD_DESCRIPTION VARCHAR(60) NOT NULL,
  FOREIGN KEY (C_CODE) REFERENCES CUSTOMER (C_CODE),
  FOREIGN KEY (AGENT_CODE) REFERENCES AGENTS (AGENT_CODE)
);

-- Inserting data into orders table --
INSERT INTO customer_db.ORDERS VALUES('200100', '1000.00', '600.00', '2008-08-01', 'C00013', 'A003', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200110', '3000.00', '500.00', '2008-04-15','C00019', 'A010', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200107', '4500.00', '900.00', '2008-08-30', 'C00007', 'A010', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200112', '2000.00', '400.00', '2008-05-30', 'C00016', 'A007', 'SOD'); 
INSERT INTO customer_db.ORDERS VALUES('200113', '4000.00', '600.00', '2008-06-10', 'C00022', 'A002', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200102', '2000.00', '300.00', '2008-05-25', 'C00012', 'A012', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200114', '3500.00', '2000.00', '2008-08-15', 'C00002', 'A008', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200122', '2500.00', '400.00', '2008-09-16', 'C00003', 'A004', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200118', '500.00', '100.00', '2008-07-20', 'C00023', 'A006', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200119', '4000.00', '700.00', '2008-09-16', 'C00007', 'A010', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200121', '1500.00', '600.00', '2008-09-23', 'C00008', 'A004', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200130', '2500.00', '400.00', '2008-07-30', 'C00025', 'A011', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200134', '4200.00', '1800.00', '2008-09-25', 'C00004', 'A005', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200108', '4000.00', '600.00', '2008-02-15', 'C00008', 'A004', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200103', '1500.00', '700.00', '2008-05-15', 'C00021', 'A005', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200105', '2500.00', '500.00', '2008-07-18', 'C00025', 'A011', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200109', '3500.00', '800.00', '2008-07-30', 'C00011', 'A010', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200101', '3000.00', '1000.00', '2008-07-15', 'C00001', 'A008', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200111', '1000.00', '300.00', '2008-07-10', 'C00020', 'A008', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200104', '1500.00', '500.00', '2008-03-13', 'C00006', 'A004', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200106', '2500.00', '700.00', '2008-04-20', 'C00005', 'A002', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200125', '2000.00', '600.00', '2008-10-10', 'C00018', 'A005', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200117', '800.00', '200.00', '2008-10-20', 'C00014', 'A001', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200123', '500.00', '100.00', '2008-09-16', 'C00022', 'A002', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200120', '500.00', '100.00', '2008-07-20', 'C00009', 'A002', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200116', '500.00', '100.00', '2008-07-13', 'C00010', 'A009', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200124', '500.00', '100.00', '2008-06-20', 'C00017', 'A007', 'SOD'); 
INSERT INTO customer_db.ORDERS VALUES('200126', '500.00', '100.00', '2008-06-24', 'C00022', 'A002', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200129', '2500.00', '500.00', '2008-07-20', 'C00024', 'A006', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200127', '2500.00', '400.00', '2008-07-20', 'C00015', 'A003', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200128', '3500.00', '1500.00', '2008-07-20', 'C00009', 'A002', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200135', '2000.00', '800.00', '2008-09-16', 'C00007', 'A010', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200131', '900.00', '150.00', '2008-08-26', 'C00012', 'A012', 'SOD');
INSERT INTO customer_db.ORDERS VALUES('200133', '1200.00', '400.00', '2008-06-29', 'C00009', 'A002', 'SOD');

-- To check the ord_date and place the whole table in ascending order on the basis of order_date 
Select ord_date from customer_db.orders;
Select * from customer_db.orders order by ord_date ASC;
Select * from customer_db.orders order by ord_num ASC;

-- Selecting c_code, c_name and payment amount from customer and connecting it with orders 
-- to get no of order of these c_codes. 

select customer.C_CODE,customer.c_name,customer.PAYMENT_AMT 
from customer_db.customer 
join customer_db.orders on customer.C_CODE = orders.C_CODE;

-- Selecting c_code, c_name and payment amount from customer and connecting it with orders 
-- to get no of order of these c_codes and sum the same code amounts to one to get total amount.
-- of same name and code number.
 
select customer.C_CODE,customer.c_name,sum(PAYMENT_AMT) 
from customer_db.customer 
join customer_db.orders on customer.C_CODE = orders.C_CODE 
group by customer.C_code,customer.c_name; 

-- Selecting c_code, c_name and payment amount from customer and connecting it with orders 
-- to get no of order of these c_codes and sum the same code amounts to one to get total amount
-- of same name and code number and in ascending order.
 
select customer.C_CODE,customer.c_name,sum(PAYMENT_AMT) 
from customer_db.customer 
join customer_db.orders on customer.C_CODE = orders.C_CODE 
group by customer.C_code,customer.c_name
order by PAYMENT_AMT; 



