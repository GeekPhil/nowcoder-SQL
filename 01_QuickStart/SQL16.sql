-- 此题要查出某个字段的最大值，用`max`内置函数
-- solution
SELECT
    max(gpa) gpa
FROM
    user_profile
WHERE
    university = '复旦大学';