-- 此题要查出满足多个混合条件的用户，`and``or`的混用
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
    (
        gpa > 3.5
        AND university = '山东大学'
    )
    OR (
        gpa > 3.8
        AND university = '复旦大学'
    );