```sql
mysql -u root -p
insert into mysql.user(Host,User,Password) values("localhost","phplamp",password("1234"))
flush privileges
grant select,update,insert,delete on phplampDB.* to phplamp@localhost identified by '1234'
flush privileges
```
