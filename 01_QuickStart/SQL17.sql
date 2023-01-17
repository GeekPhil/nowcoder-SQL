-- 此题要统计男性用户的人数和平均gpa，且从示例可看出需要保留一位小数，用`count``avg`和`round`函数
-- solution
SELECT
    count(*) male_num,
    round(avg(gpa), 1) avg_gpa
FROM
    user_profile
WHERE
    gender = 'male';