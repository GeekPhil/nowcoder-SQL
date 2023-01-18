-- 此题考察联合查询，可先查出答过题的用户信息作为子表，联合用户信息表查出详细信息
-- solution 1
SELECT
    u.university AS university,
    round(avg(q.cnt), 4) AS avg_answer_cnt
FROM
    (
        SELECT
            device_id,
            count(question_id) cnt
        FROM
            question_practice_detail
        GROUP BY
            device_id
    ) AS q
    LEFT JOIN user_profile AS u ON q.device_id = u.device_id
GROUP BY
    u.university
ORDER BY
    u.university;

-- 也可先联合两表查出全部信息，再去重
-- solution 2
SELECT
    university,
    round(
        count(question_id) / count(DISTINCT q.device_id),
        4
    ) AS avg_answer_cnt
FROM
    question_practice_detail AS q
    LEFT JOIN user_profile AS u ON q.device_id = u.device_id
GROUP BY
    university;