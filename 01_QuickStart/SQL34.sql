-- 综合考察，先查出“复旦大学”的用户，再联合答题情况表查出8月份的用户，最后统计所需信息
-- solution
SELECT
    u.*,
    count(q.id) question_cnt,
    count(IF(q.result = 'right', 1, NULL)) right_question_cnt
FROM
    (
        SELECT
            device_id,
            university
        FROM
            user_profile
        WHERE
            university = '复旦大学'
    ) u
    LEFT JOIN question_practice_detail q ON u.device_id = q.device_id
    AND MONTH(q.date) = 8
GROUP BY
    u.device_id;