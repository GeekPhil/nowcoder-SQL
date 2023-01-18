-- 此题考察子查询，先通过子查询获得符合条件的用户"device_id"，再将该字段作为条件查询详细信息
-- solution
SELECT
    device_id,
    question_id,
    result
FROM
    question_practice_detail
WHERE
    device_id IN (
        SELECT
            device_id
        FROM
            user_profile
        WHERE
            university = '浙江大学'
    )
ORDER BY
    question_id;