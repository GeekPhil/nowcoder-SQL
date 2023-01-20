-- 此题要查出每个学校gpa最低的用户，用`()`包裹两个条件做判断
-- solution
SELECT
    device_id,
    university,
    gpa
FROM
    user_profile
WHERE
    (university, gpa) IN (
        SELECT
            university,
            min(gpa) gpa
        FROM
            user_profile
        GROUP BY
            university
    )
ORDER BY
    university;