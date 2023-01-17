-- 此题要查出满足多个条件之一的用户，用`in`关键字
-- solution
SELECT
    device_id,
    gender,
    age,
    university,
    gpa
FROM
    user_profile
WHERE
    university IN ('北京大学', '复旦大学', '山东大学');