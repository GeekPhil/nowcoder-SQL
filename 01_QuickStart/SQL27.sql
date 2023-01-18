-- 此题考察条件查询，用`case ... when ... end`表达多个条件
-- solution
SELECT
    device_id,
    gender,
    (
        CASE
            WHEN age < 20 THEN '20岁以下'
            WHEN age BETWEEN 20
            AND 24 THEN '20-24岁'
            WHEN age >= 25 THEN '25岁及以上'
            ELSE '其他'
        END
    ) AS age_cut
FROM
    user_profile;