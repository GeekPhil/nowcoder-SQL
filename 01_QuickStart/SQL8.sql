-- 此题要求查出给定年龄区间的用户，用`between ... and ...`限定条件
-- solution
SELECT
    device_id,
    gender,
    age
FROM
    user_profile
WHERE
    age BETWEEN 20
    AND 23;