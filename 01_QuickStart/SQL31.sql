-- 此题考察字符串函数的使用，用`substring`截取字符串
-- solution
SELECT
    device_id,
    substring(blog_url, 11)
FROM
    user_submit;