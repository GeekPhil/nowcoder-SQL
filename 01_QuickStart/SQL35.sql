-- 综合考察，先联合三表查出并标记“浙江大学”答对题的用户，再计算正确率并排序
-- solution
SELECT
    ans.difficult_level,
    sum(ans.rflg) / count(*) correct_rate
FROM
    (
        SELECT
            IF(qa.result = 'right', 1, 0) rflg,
            qd.difficult_level
        FROM
            user_profile u,
            question_practice_detail qa,
            question_detail qd
        WHERE
            u.device_id = qa.device_id
            AND qa.question_id = qd.question_id
            AND u.university = '浙江大学'
    ) ans
GROUP BY
    ans.difficult_level
ORDER BY
    correct_rate;