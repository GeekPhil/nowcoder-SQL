-- 此题要查出学校中含有“北京”的用户，用`like`进行模糊匹配
-- solution
SELECT
    device_id,
    age,
    university
FROM
    user_profile
WHERE
    university LIKE '%北京%';