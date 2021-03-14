select * from Users
where REGEXP_LIKE(mail, '^[a-z]+[a-z0-9_\.\-]*@leetcode.com', 'i');