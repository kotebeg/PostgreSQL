-- 130. More on Number Data Types
-- UNDER QUERY TOOL, data type checking
SELECT 2+2;
SELECT (2);

SELECT (2.0);
SELECT (2.0::INTEGER);
SELECT (2.0::SMALLINT);
SELECT (999999999::SMALLINT);
select (1.99999::decimal - 1.99998::decimal);

-- select (1.99999::decimal - 1.99998::decimal);
select(1.4::integer);   -- rounds numbers
select(1.7::integer);   -- rounds numbers
