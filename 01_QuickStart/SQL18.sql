-- 此题要对用户进行分组并统计相关信息，用`group by`对字段分组
-- solution
SELECT
    gender,
    university,
    count(*) user_num,
    avg(active_days_within_30) avg_active_day,
    avg(question_cnt) avg_question_cnt
FROM
    user_profile
GROUP BY
    university,
    gender;