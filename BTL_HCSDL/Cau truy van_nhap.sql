USE EBOOKSTORE;
/* Lọc hàng theo đk*/
SELECT *FROM AUTHOR;
SELECT * FROM AUTHOR WHERE ANAME='Bella';
SELECT * FROM AUTHOR WHERE ID != 'AU0000001' AND ANAME='Miho';
/* Lọc cột  */
SELECT * FROM BOOK;
SELECT TITLE,PRICE FROM BOOK ;
SELECT * FROM (SELECT TITLE,PRICE FROM BOOK) AS RES1 ;/* change name of the new table*/

SELECT TITLE AS TIEUDE FROM BOOK;/*Change name of column TEMPORALY*/ 
SELECT * FROM BOOK;
SELECT * FROM AUTHOR AS TACGIA;
SELECT * FROM EBOOK;
SELECT * FROM CREDIT_PAYMENT;
SHOW TABLES ;

INSERT INTO publisher
VALUES ('NXB 1', NULL, NULL);
INSERT INTO publisher
VALUES ('NXB 2', NULL, NULL);
INSERT INTO publisher
VALUES ('NXB 3', NULL, NULL);
INSERT INTO publisher
VALUES ('NXB 4', NULL, NULL);
INSERT INTO BOOK
VALUES ('0000000000001', 'Chim se va dau tay', '100000','NXB 1');
INSERT INTO BOOK
VALUES ('0000000000002', 'Tu su', '130000','NXB 2');
INSERT INTO BOOK
VALUES ('0000000000003', 'Vi sao mat troi lan huong dong', '90000','NXB 1');
INSERT INTO BOOK
VALUES ('0000000000004', 'Beginning', '120000','NXB 3');
INSERT INTO BOOK
VALUES ('0000000000005', 'Flower', '77000','NXB 4');
INSERT INTO BOOK
VALUES ('0000000000006', '2 Ba Trung', '80000','NXB 2');
INSERT INTO BOOK
VALUES ('0000000000007', 'Binh minh', '122000','NXB 4');
INSERT INTO written_by
VALUES ('0000000000001', 'AU0000001');
INSERT INTO written_by
VALUES ('0000000000001', 'AU0000002');
INSERT INTO written_by
VALUES ('0000000000001', 'AU0000005');
INSERT INTO written_by
VALUES ('0000000000002', 'AU0000002');
INSERT INTO written_by
VALUES ('0000000000003', 'AU0000003');
INSERT INTO written_by
VALUES ('0000000000003', 'AU0000001');
INSERT INTO written_by
VALUES ('0000000000004', 'AU0000001');
INSERT INTO written_by
VALUES ('0000000000005', 'AU0000002');
INSERT INTO written_by
VALUES ('0000000000006', 'AU0000004');
INSERT INTO written_by
VALUES ('0000000000006', 'AU0000005');
INSERT INTO written_by
VALUES ('0000000000007', 'AU0000005');
INSERT INTO EBOOK
VALUES ('0000000000006', NULL);
INSERT INTO EBOOK
VALUES ('0000000000007', NULL);
INSERT INTO traditional_book
VALUES ('0000000000001');
INSERT INTO traditional_book
VALUES ('0000000000002');
INSERT INTO traditional_book
VALUES ('0000000000003');
INSERT INTO traditional_book
VALUES ('0000000000004');
INSERT INTO traditional_book
VALUES ('0000000000005');
INSERT INTO EMPLOYEE
VALUES ('000000001', 'Sarah','John');
INSERT INTO EMPLOYEE
VALUES ('000000002', 'Mike','Elnow');
INSERT INTO EMPLOYEE
VALUES ('000000003', 'Shaco','Lava');
INSERT INTO EMPLOYEE
VALUES ('000000004', 'Saborah','Johnson');
INSERT INTO EMPLOYEE
VALUES ('000000005', 'Anna','Bayes');
INSERT INTO EMPLOYEE
VALUES ('000000006', 'Kaisa','Howwy');
INSERT INTO EMPLOYEE
VALUES ('000000007', 'Elsa','Boskawa');
INSERT INTO warehouse
VALUES ('WH 01',NULL,NULL,'000000001');
INSERT INTO warehouse
VALUES ('WH 02',NULL,NULL,'000000002');
INSERT INTO warehouse
VALUES ('WH 03',NULL,NULL,'000000003');
INSERT INTO stocked_in
VALUES ('0000000000001','WH 01',200);
INSERT INTO stocked_in
VALUES ('0000000000001','WH 02',100);
INSERT INTO stocked_in
VALUES ('0000000000001','WH 03',300);
INSERT INTO stocked_in
VALUES ('0000000000002','WH 01',0);
INSERT INTO stocked_in
VALUES ('0000000000002','WH 02',250);
INSERT INTO stocked_in
VALUES ('0000000000002','WH 03',100);
INSERT INTO stocked_in
VALUES ('0000000000003','WH 01',220);
INSERT INTO stocked_in
VALUES ('0000000000003','WH 02',0);
INSERT INTO stocked_in
VALUES ('0000000000003','WH 03',70);
INSERT INTO stocked_in
VALUES ('0000000000004','WH 01',290);
INSERT INTO stocked_in
VALUES ('0000000000004','WH 02',0);
INSERT INTO stocked_in
VALUES ('0000000000004','WH 03',0);
INSERT INTO stocked_in
VALUES ('0000000000005','WH 01',200);
INSERT INTO stocked_in
VALUES ('0000000000005','WH 02',120);
INSERT INTO stocked_in
VALUES ('0000000000005','WH 03',0);
INSERT INTO checks
VALUES ('0000000000001','000000001','WH 01',20,0,'2020-11-18');
INSERT INTO checks
VALUES ('0000000000001','000000001','WH 01',0,70,'2020-11-30');
INSERT INTO checks
VALUES ('0000000000002','000000004','WH 03',30,0,'2020-11-18');
INSERT INTO checks
VALUES ('0000000000002','000000002','WH 01',0,100,'2020-12-2');
INSERT INTO checks
VALUES ('0000000000003','000000003','WH 03',80,0,'2020-10-20');
INSERT INTO customer
VALUES ('C00000001',NULL,NULL,NULL,NULL,'Nguyen','Pham');
INSERT INTO customer
VALUES ('C00000002',NULL,NULL,NULL,NULL,'Andree','Pham');
INSERT INTO customer
VALUES ('C00000003',NULL,NULL,NULL,NULL,'Hien','Tran');
INSERT INTO customer
VALUES ('C00000004',NULL,NULL,NULL,NULL,'Mina','Truong');
INSERT INTO credit_card
VALUES ('1231123112311231',NULL,'Nguyen','OCB',NULL,'C00000001');
INSERT INTO credit_card
VALUES ('1231123112311232',NULL,'Nguyen','BIDV',NULL,'C00000001');
INSERT INTO credit_card
VALUES ('2345234523452345',NULL,'Hien','OCB',NULL,'C00000003');
INSERT INTO credit_card
VALUES ('3456345634563456',NULL,'Andree','OCB',NULL,'C00000002');
INSERT INTO credit_card
VALUES ('4444444444444444',NULL,'Mina','ACB',NULL,'C00000004');
INSERT INTO book_transaction
VALUES ('C00000001','2020-11-22','WAITING',NULL,200000,NULL);
INSERT INTO book_transaction
VALUES ('C00000002','2020-11-23','ERROR',NULL,240000,NULL);
INSERT INTO book_transaction
VALUES ('C00000003','2020-11-29','ERROR',NULL,220000,NULL);
INSERT INTO book_transaction
VALUES ('C00000004','2020-10-24','EXPORT',NULL,100000,NULL);
INSERT INTO book_transaction
VALUES ('C00000002','2020-11-18','SUCCESS',NULL,50000,NULL);
INSERT INTO book_in_transaction
VALUES ('C00000001','2020-11-22','0000000000001',2,'BUY');
INSERT INTO book_in_transaction
VALUES ('C00000001','2020-11-22','0000000000002',4,'BUY');
INSERT INTO book_in_transaction
VALUES ('C00000004','2020-10-24','0000000000004',1,'BUY');
INSERT INTO book_in_transaction
VALUES ('C00000004','2020-10-24','0000000000003',4,'BUY');
INSERT INTO book_in_transaction
VALUES ('C00000004','2020-10-24','0000000000001',4,'BUY');
INSERT INTO book_in_transaction
VALUES ('C00000003','2020-11-29','0000000000006',12,'BORROW');
INSERT INTO book_in_transaction
VALUES ('C00000002','2020-11-23','0000000000007',25,'BORROW');
INSERT INTO book_in_transaction
VALUES ('C00000002','2020-11-18','0000000000005',2,'BUY');
INSERT INTO payment
VALUES ('P00000001','2020-11-22','UNPAID','C00000001');
INSERT INTO payment
VALUES ('P00000002','2020-11-23','PAID','C00000002');
INSERT INTO payment
VALUES ('P00000003','2020-11-29','PAID','C00000003');
INSERT INTO payment
VALUES ('P00000004','2020-10-24','PAID','C00000004');
INSERT INTO payment
VALUES ('P00000005','2020-11-18','PAID','C00000002');
INSERT INTO TRANSFER
VALUES ('P00000001',NULL);
INSERT INTO TRANSFER
VALUES ('P00000004',NULL);
INSERT INTO credit_payment
VALUES ('P00000002','3456345634563456');
INSERT INTO credit_payment
VALUES ('P00000003','2345234523452345');
INSERT INTO credit_payment
VALUES ('P00000005','3456345634563456');
INSERT INTO book_field
VALUES ('0000000000001','Van hoc');
INSERT INTO book_field
VALUES ('0000000000001','KHXH');
INSERT INTO book_field
VALUES ('0000000000002','Van hoc');
INSERT INTO book_field
VALUES ('0000000000003','KHTN');
INSERT INTO book_field
VALUES ('0000000000004','Lich su');
INSERT INTO book_field
VALUES ('0000000000004','Van hoc');
INSERT INTO book_field
VALUES ('0000000000005','Sinh hoc');
INSERT INTO book_field
VALUES ('0000000000006','Lich su');
INSERT INTO book_field
VALUES ('0000000000007','KHTN');
INSERT INTO book_field
VALUES ('0000000000007','Van hoc');
INSERT INTO book_keyword
VALUES ('0000000000001','chim');
INSERT INTO book_keyword
VALUES ('0000000000001','trai cay');
INSERT INTO book_keyword
VALUES ('0000000000001','ngu ngon');
INSERT INTO book_keyword
VALUES ('0000000000001','truyen tranh');
INSERT INTO book_keyword
VALUES ('0000000000002','truyen tranh');
INSERT INTO book_keyword
VALUES ('0000000000003','tu nhien');
INSERT INTO book_keyword
VALUES ('0000000000003','giai thich');
INSERT INTO book_keyword
VALUES ('0000000000003','mat troi');
INSERT INTO book_keyword
VALUES ('0000000000004','bat dau');
INSERT INTO book_keyword
VALUES ('0000000000005','giai thich');
INSERT INTO book_keyword
VALUES ('0000000000005','tu nhien');
INSERT INTO book_keyword
VALUES ('0000000000005','hoa');
INSERT INTO book_keyword
VALUES ('0000000000006','ba trung');
INSERT INTO book_keyword
VALUES ('0000000000006','truyen tranh');
INSERT INTO book_keyword
VALUES ('0000000000007','mat troi');
INSERT INTO book_keyword
VALUES ('0000000000007','tu nhien');
INSERT INTO book_year_published
VALUES ('0000000000001',1999);
INSERT INTO book_keyword
VALUES ('0000000000001',2010);
INSERT INTO book_keyword
VALUES ('0000000000002',2010);
INSERT INTO book_keyword
VALUES ('0000000000002',2015);
INSERT INTO book_keyword
VALUES ('0000000000003',1999);
INSERT INTO book_keyword
VALUES ('0000000000004',2002);
INSERT INTO book_keyword
VALUES ('0000000000004',2015);
INSERT INTO book_keyword
VALUES ('0000000000005',2005);
INSERT INTO book_keyword
VALUES ('0000000000006',1989);
INSERT INTO book_keyword
VALUES ('0000000000006',2015);
INSERT INTO book_keyword
VALUES ('0000000000007',2015);




INSERT INTO BOOK
VALUES ('9787115537362', 'Chim se va dau tay', '100000','Prentice Hall');
INSERT INTO BOOK
VALUES ('9780596552473', 'Tu su', '56000','OReilly');
INSERT INTO BOOK
VALUES ('9780596520830', 'Vi sao mat troi lan huong dong', '30000','OReilly');
INSERT INTO BOOK
VALUES ('9781492077374', 'Beginning', '49560','OReilly');
INSERT INTO BOOK
VALUES ('9781789803846', 'Flower', '126400','Packt Publishing');
INSERT INTO BOOK
VALUES ('9781838642358', 'Sun', '200900','Packt Publishing');
INSERT INTO BOOK
VALUES ('9780262340120', 'No SQL: The Shifting Materialities of Database Technology', '245504','The MIT Press');
