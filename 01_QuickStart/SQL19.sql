-- 此题要对分组后的用户进行条件过滤，用`having`限制分组条件
-- solution
SELECT
    university,
    avg(question_cnt) avg_question_cnt,
    avg(answer_cnt) avg_answer_cnt
FROM
    user_profile
GROUP BY
    university
HAVING
    avg_question_cnt < 5
    OR avg_answer_cnt < 20;