-- 此题考察字符串函数的使用，用`like`模糊匹配出性别，再对性别分组统计
-- solution
SELECT
    p.gender,
    count(*)
FROM
    (
        SELECT
            IF(profile LIKE '%female', 'female', 'male') gender
        FROM
            user_submit
    ) AS p
GROUP BY
    p.gender;