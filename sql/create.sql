--dorp table
DROP TABLE book;

-- create table

CREATE TABLE book
(
   no         NUMBER (10),
   title      VARCHAR2 (100),
   author     VARCHAR2 (10),
   pub_date   DATE
);

-- insert

INSERT INTO book
     VALUES (1,
             '토지',
             '박경리',
             TO_DATE ('2005/03/02', 'yyyy/mm/dd'));

INSERT INTO book (author,
                  no,
                  pub_date,
                  title)
     VALUES ('다케이',
             2,
             TO_DATE ('2006-04-05', 'yyyy-mm-dd'),
             '슬램덩크');

-- delete

DELETE FROM book;

-- update

UPDATE book
   SET title = '토지2', author = '박경리2'
 WHERE no = 1;

UPDATE book
   SET title = '슬램덩크', author = '다케이코'
 WHERE no = 2;

-- commit
COMMIT;

-- rollback
ROLLBACK;

-- select

SELECT * FROM book;

SELECT * FROM article;

-- alter table

ALTER TABLE book
   ADD (pubs VARCHAR2 (100));

ALTER TABLE book
   MODIFY (author VARCHAR2 (100));

ALTER TABLE book
   DROP (author);

ALTER TABLE book SET UNUSED(author);

-- truncate table
TRUNCATE TABLE book;

-- comment
COMMENT ON TABLE book IS 'this is table for book information';

-- rename table
RENAME book TO article;