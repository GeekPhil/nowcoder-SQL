-- 此题考察排序，先查出用户的年龄，再进行升序排序
-- solution
SELECT
    device_id,
    age
FROM
    user_profile
ORDER BY
    age;