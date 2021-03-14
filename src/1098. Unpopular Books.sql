--LYS gives books that have sold less than 10 copies
WITH LYS AS
    (SELECT b.book_id,
    b.name
    FROM books b
    JOIN orders o
    ON (b.book_id = o.book_id)
    WHERE 
    o.dispatch_date BETWEEN '2018-06-23' AND '2019-06-23' AND 
    b.available_from  < '2019-05-23'
    GROUP BY b.book_id,
    b.name
    HAVING sum(o.quantity) < 10),
--LYS_G gives books that have sold more than 9 copies
LYS_G AS
    (SELECT b.book_id,
    b.name
    FROM books b
    JOIN orders o
    ON (b.book_id = o.book_id)
    WHERE 
    o.dispatch_date BETWEEN '2018-06-23' AND '2019-06-23' AND 
    b.available_from  < '2019-05-23'
    GROUP BY b.book_id,
    b.name
    HAVING sum(o.quantity) > 9)
SELECT book_id,
name
FROM LYS
UNION --UNION IS TO ADD RECORDS THAT AREN'T ON ORDERS TABLE
SELECT b.book_id,
b.name
FROM books b
LEFT JOIN orders o
ON (b.book_id = o.book_id)
WHERE b.available_from  < '2019-05-23'
MINUS --MINUS IS TO REMOVE RECORDS THAT HAVE SOLD MORE THAN 9
SELECT book_id,
name FROM
books
WHERE book_ID IN (SELECT book_id FROM LYS_G)
