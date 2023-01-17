-- 此题要查出至少满足一个条件的用户，用`or`关键字
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
    university = '北京大学'
    OR gpa > 3.7;