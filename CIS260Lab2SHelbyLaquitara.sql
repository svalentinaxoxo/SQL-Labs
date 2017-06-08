/***********************************************************************
*Shelby Laquitara
*CIS260 Lab 2
*
*September 7th, 2015
***********************************************************************/

/* 1. The purpose of the WHERE clause is to limit the result set and to 
filter the rows in the base table so that only the rows you need are retrieved.
The WHERE Clause condition results in either true, false, or null. 
The condition can be made up of a column of any data type, a literal, a number,
a function, a mathematical computation, or any combination of the above. */

--2. All invoices where the vendor id equals 34
SELECT * --correct
FROM ap.invoices
WHERE vendor_id = 34;

--3. All invoices where total of the invoice is $356.48
SELECT invoice_id --correct
FROM ap.invoices
WHERE invoice_total = 356.48;

--4. All invoices, vendor id is either 81, 82, or 90. Use the IN operator. 
SELECT invoice_id, invoice_number, invoice_date --correct 
FROM ap.invoices
WHERE vendor_id IN (81, 82, 90);

--5. All invoices where the vendor id is less than or equal to 44.
SELECT invoice_id, vendor_id --correct
FROM ap.invoices
WHERE vendor_id <= 44 ;

--6. All invoices where the credit total is not equal to zero.
SELECT invoice_id, vendor_id, credit_total --correct but doesnt match with example 
FROM ap.invoices
WHERE credit_total <> 0 ;

--7. All invoices where the invoice date is equal to May 1, 2008.
SELECT invoice_id, invoice_date --correct but adds one more row than the example
FROM ap.invoices 
Where invoice_date = '01-MAY-08';

--8. All invoices where payment total is between 100 and 115, Inclusive. 
SELECT invoice_id, invoice_date, payment_total --correct 
FROM ap.invoices
WHERE payment_total BETWEEN '100' and '115';

/*9. All invoices where invoice date is between May 1, 2008 and May 8, 2008,
inclusive, use between operator. */
SELECT invoice_id, invoice_date --correct 15 rows 
FROM ap.invoices
WHERE invoice_date BETWEEN '01-MAY-08' AND '08-MAY-08';

--10. All invoices where invoice number starts with a capital P. 
SELECT invoice_id, invoice_number --correct 
FROM ap.invoices
WHERE invoice_number LIKE 'P%';

/*11. All invoices, invoice number starts with a Capital P followed by a 
dash followed by a 3.*/
SELECT invoice_id, invoice_number --not right
FROM ap.invoices
WHERE invoice_number LIKE 'P-3%';

--12. All invoices, invoice number ends with a –X (dash followed by a capital X)
SELECT invoice_id, invoice_number --not right 
FROM ap.invoices 
WHERE invoice_number LIKE '%–X';

--13. All invoices, invoice number does not start with or end with a double 7. 
SELECT invoice_id, invoice_number --not right
FROM ap.invoices 
WHERE invoice_number NOT LIKE '77%77';

/*14. All invoices, invoice number has a zero as the second 
character and a 3 as the fourth.*/
SELECT invoice_id, invoice_number --correct 
FROM ap.invoices 
WHERE invoice_number LIKE '_0_3_%';

--15. All invoices where the payment date contains a null value. 
SELECT invoice_id, payment_date --correct 40 rows
FROM ap.invoices 
WHERE payment_date IS NULL;

--16. All invoices where payement date does not contain a null value.
SELECT invoice_id, payment_date --correct 
FROM ap.invoices 
WHERE payment_date IS NOT NULL;

--17. All invoices, payment total is zero and invoice total is greater than $100.
SELECT invoice_id, payment_total, invoice_total --correct 
FROM ap.invoices 
WHERE payment_total = 0 AND invoice_total > 100;

/* 18. All invoices, payment total is between zero and 25, inclusive 
or the invoice total is greater than 100. */
SELECT invoice_id, payment_total, invoice_total --correct 
FROM ap.invoices 
WHERE payment_total BETWEEN 0 AND 25 OR invoice_total > 100;

--19. All invoices, terms id is not 1 or 2 or 3 or 4. USE IN operator. 
SELECT invoice_id, terms_id --correct 
FROM ap.invoices 
WHERE terms_id NOT IN (1, 2, 3, 4);

/* 20. All invoices, invoice date is either May 1, 2008 or May 17, 2008 and
payment total amount is zero. Must use the OR and AND operators.  */
SELECT invoice_id, invoice_date, payment_total --not right 
FROM ap.invoices 
WHERE invoice_date = '01-MAY-08' OR '17-MAY-08' 
AND payment_total = 0; 