-- 此题考察日期函数的使用，先对第二天留存的用户做标记，再统计被标记用户的平均值
-- solution
SELECT
    sum(t.flg) / count(*) avg_ret
FROM
    (
        SELECT
            q.device_id,
            q.date,
            IF(
                date_add(q.date, INTERVAL 1 DAY) IN (
                    SELECT
                        p.date
                    FROM
                        question_practice_detail p
                    WHERE
                        p.device_id = q.device_id
                ),
                1,
                0
            ) flg
        FROM
            question_practice_detail q
        GROUP BY
            q.device_id,
            q.date
    ) t;