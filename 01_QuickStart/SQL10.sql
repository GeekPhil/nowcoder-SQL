-- 此题要排除年龄为空的用户，用`is not null`限定年龄
-- solution
SELECT
    device_id,
    gender,
    age,
    university
FROM
    user_profile
WHERE
    age IS NOT NULL;