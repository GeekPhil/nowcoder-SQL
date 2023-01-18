-- 此题考察条件函数的使用，用`ifnull`处理空值
-- solution
SELECT
    a.age_cut,
    count(*) AS number
FROM
    (
        SELECT
            IF(IFNULL(age, 0) < 25, '25岁以下', '25岁及以上') age_cut
        FROM
            user_profile
    ) AS a
GROUP BY
    a.age_cut;