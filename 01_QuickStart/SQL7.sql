-- 此题要求查出年龄大于24岁的用户，用`where`限制年龄
-- solution
SELECT
    device_id,
    gender,
    age,
    university
FROM
    user_profile
WHERE
    age > 24;