-- 此题考察日期函数的使用，用`day`取日期中的天数
-- solution
SELECT
    DAY(q.date) AS DAY,
    count(*) AS question_cnt
FROM
    question_practice_detail q
WHERE
    q.date BETWEEN '2021-08-01'
    AND '2021-08-31'
GROUP BY
    q.date;