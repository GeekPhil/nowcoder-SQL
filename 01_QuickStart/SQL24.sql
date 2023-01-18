-- 三表联查，可先联合答题表和题目信息表查出符合条件的信息得到子表，再联合用户信息表查出所需数据
-- solution 1
SELECT
    u.university,
    q.difficult_level,
    round(avg(q.cnt), 4) avg_answer_cnt
FROM
    (
        SELECT
            qa.device_id,
            qd.difficult_level,
            count(*) cnt
        FROM
            question_practice_detail qa
            LEFT JOIN question_detail qd ON qa.question_id = qd.question_id
        GROUP BY
            qd.difficult_level,
            qa.device_id
    ) q
    LEFT JOIN user_profile u ON q.device_id = u.device_id
GROUP BY
    q.difficult_level,
    u.university
HAVING
    u.university = '山东大学'
ORDER BY
    u.university,
    q.difficult_level;

-- 也可先联合三表查询，再去重
-- solution 2
SELECT
    t1.university,
    t3.difficult_level,
    round(
        count(t2.question_id) / count(DISTINCT t2.device_id),
        4
    ) AS avg_answer_cnt
FROM
    user_profile AS t1,
    question_practice_detail AS t2,
    question_detail AS t3
WHERE
    t1.university = '山东大学'
    AND t1.device_id = t2.device_id
    AND t2.question_id = t3.question_id
GROUP BY
    t3.difficult_level;