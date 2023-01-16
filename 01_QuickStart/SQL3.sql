-- 此题要查表中用户来自哪些学校并去重，可使用`distinct`关键字去重，也可按学校字段分组
-- solution 1
SELECT
    DISTINCT university
FROM
    user_profile;

-- solution 2
SELECT
    university
FROM
    user_profile
GROUP BY
    university;