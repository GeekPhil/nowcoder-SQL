-- 此题考察组合查询，分别按不同条件查出两张表，用`union all`将两表拼在一起，不去重
-- solution
SELECT
    device_id,
    gender,
    age,
    gpa
FROM
    user_profile
WHERE
    university = '山东大学'
UNION
ALL
SELECT
    device_id,
    gender,
    age,
    gpa
FROM
    user_profile
WHERE
    gender = 'male';