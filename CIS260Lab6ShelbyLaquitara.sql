--Shelby Laquitara
--Lab 6

--1. 
SELECT COUNT(*) AS "Number of Invoices"
FROM ap.invoices;

--2. 
SELECT COUNT(payment_date) AS "Number of Valid Payment Dates"
FROM ap.invoices
WHERE payment_date IS NOT NULL;

--3. --not right output
SELECT COUNT(payment_date) AS "Number of Null Payment Dates"
FROM ap.invoices
WHERE payment_date IS NULL;

--4. --output 40?
SELECT DISTINCT payment_date AS "Different Payment Dates"
FROM ap.invoices
WHERE payment_date IS NOT NULL
ORDER BY payment_date ASC;

--5.
SELECT COUNT(DISTINCT payment_date) AS "Number of Diff. Payment Dates"
FROM ap.invoices
WHERE payment_date IS NOT NULL;

--6.
SELECT to_char(SUM(invoice_total), '999,999.99') AS "Total Invoice Amount"
FROM ap.invoices;

--7.
SELECT to_char(AVG(invoice_total), '9999.999') AS "Average Invoice Amount"
FROM ap.invoices;

--OR 

SELECT round(AVG(invoice_total), 3) AS "Average Invoice Amount"
FROM ap.invoices;

--8. 1880?
SELECT to_char(AVG(invoice_total), '9999') AS "Average Invoice Amount"
FROM ap.invoices;

--OR 

SELECT round(AVG(invoice_total), 0) AS "Average Invoice Amount"
FROM ap.invoices;

--9.
SELECT Min(invoice_total) AS "Lowest Invoice Total",
       Max(invoice_total) AS "Highest Invoice Total"
FROM ap.invoices;

--10. not right output 
SELECT to_char(Min(invoice_total), '$9.99') AS "Lowest Invoice Total",
       to_char(Max(invoice_total), '$99,999.99') AS "Highest Invoice Total"
FROM ap.invoices;

--11.
SELECT Max(vendor_name) AS "Last Vendor"
FROM ap.vendors;

--12.
SELECT MIN(invoice_date) AS "Earliest Invoice Date"
FROM ap.invoices;

--13. 
SELECT invoice_date, COUNT(*) AS "Invoices per Date"
FROM ap.invoices
GROUP BY invoice_date
ORDER BY invoice_date ASC;

--14.
SELECT invoice_total, COUNT(*) AS "Invoices Less Than $10.00" 
FROM ap.invoices
GROUP BY invoice_total
HAVING invoice_total < 10.00
ORDER BY invoice_total;

--15. 
SELECT vendor_state, COUNT(*) AS "Vendors per State"
FROM ap.vendors
GROUP BY vendor_state
ORDER BY vendor_state ASC;

--16.
SELECT vendor_state, COUNT(*) AS "Vendors per State"
FROM ap.vendors
GROUP BY vendor_state
HAVING COUNT(*) >= 3
ORDER BY COUNT(*) DESC;

--17.
SELECT terms_id, COUNT(*) AS "Number in Terms Id Category"
FROM ap.invoices
GROUP BY terms_id
ORDER BY terms_id ASC;

--18.
SELECT invoice_date, COUNT(*) AS "Invoices in June, 2008"
FROM ap.invoices
WHERE invoice_date BETWEEN '01-JUN-08' AND '30-JUN-08'
GROUP BY invoice_date
ORDER BY invoice_date ASC;

--19. 
SELECT invoice_date, COUNT(*) AS "Invoices in June 2008"
FROM ap.invoices
GROUP BY invoice_date
HAVING invoice_date BETWEEN '01-JUN-08' AND '30-JUN-08'
ORDER BY invoice_date ASC;

--20. --wrong
SELECT COUNT(INVOICE_DATE) AS "Difference in Days",
       COUNT(INVOICE_DUE_DATE) AS "How Many?"
FROM ap.invoices
WHERE INVOICE_DATE = INVOICE_DUE_DATE
HAVING invoice_date <= 80 AND invoice_due_date <= 2
ORDER BY INVOICE_DATE, INVOICE_DUE_DATE;

