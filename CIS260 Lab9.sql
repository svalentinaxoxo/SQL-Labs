--Shelby Laquitara 
--Lab 9 

--1. use the student space correct 
SELECT DISTINCT cost
FROM student.course
WHERE cost =
      (SELECT MIN(cost)
      FROM student.course);

--2. --use two subquerys ??
SELECT cost
FROM STUDENT.COURSE
WHERE cost <
        (SELECT cost, 1095
        FROM student.course);

--3. --correct 
SELECT cost
FROM student.course
WHERE cost >
      (SELECT AVG(cost)
      FROM student.course);
      
--4.--correct
SELECT MIN(enroll_date) As "Earliest Enrollment Date"
FROM student.enrollment;

--5.
SELECT (Min(enroll_date), 30) As "Earliest Date plus 30"
FROM student.enrollment;

--6. use AP table space 
SELECT v.vendor_name, i.invoice_number, i.invoice_total
FROM ap.invoices i JOIN AP.VENDORS v
    ON i.vendor_id = v.vendor_id
WHERE invoice_total < Max(invoice_total 123);

--7.
SELECT vendor_id, vendor_name, vendor_state
FROM AP.VENDORS
WHERE vendor_id IN 
      (SELECT vendor_id
      FROM AP.VENDOR_CONTACTS);
      
--8. use the student table double ampersand substitution 
SELECT last_name, first_name
FROM student.student;

--9.--correct
SELECT cost
FROM student.course
WHERE cost > 
       (SELECT MIN(cost)
       FROM student.course);

--10. use ap table space correct 
SELECT vendor_id, invoice_number, invoice_total
FROM ap.invoices inv_main
WHERE invoice_total >
      (SELECT AVG(invoice_total)
      FROM ap.invoices inv_sub
      WHERE inv_sub.vendor_id = inv_main.vendor_id)
ORDER BY vendor_id;

--11. correct 
SELECT v.vendor_id, v.vendor_name, i.invoice_id
FROM ap.vendors v INNER JOIN ap.invoices i
     ON v.vendor_id = i.vendor_id
WHERE invoice_total >= 1
ORDER BY vendor_name ASC;

--12. 
SELECT vendor_name, COUNT(I.INVOICE_ID)
;

--13. 
SELECT vc.last_name As vendor_contact_last_name, vc.first_name AS vendor_contact_first_name, v.vendor_state 
FROM AP.VENDOR_CONTACTS vc JOIN ap.vendors v
        ON vc.vendor_id = v.vendor_id
WHERE LENGTH(vc.last_name)> LENGTH(vc.first_name) AND
      (v.vendor_state = 'CA' OR 'NJ')
Order by Last_name ASC;

--14. 
SELECT vendor_id, vendor_name || 
FROM ap.vendors

--15.
SELECT REGEXP_SUBSTR(vendor_name)
FROM ap.vendors;


