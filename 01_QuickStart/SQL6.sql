-- 此题要查出“北京大学”的学生，用`where`限定条件
-- solution
SELECT
    device_id,
    university
FROM
    user_profile
WHERE
    university = '北京大学';