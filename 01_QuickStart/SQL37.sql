-- 此题考察按多个字段排序，同为升序用`asc`可省略
-- solution
SELECT
    device_id,
    gpa,
    age
FROM
    user_profile
ORDER BY
    gpa,
    age;