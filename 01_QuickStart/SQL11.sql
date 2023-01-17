-- 此题要查同时满足两个给定条件的用户，用`and`关键字
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
    gender = 'male'
    AND gpa > 3.5;