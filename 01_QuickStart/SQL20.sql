-- 此题要在分组的基础上进行排序，用`order by`排序，默认升序
-- solution
SELECT
    university,
    avg(question_cnt) avg_question_cnt
FROM
    user_profile
GROUP BY
    university
ORDER BY
    avg_question_cnt;