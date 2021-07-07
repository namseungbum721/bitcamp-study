SQL> desc sosi
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(4)
 NAME                                               VARCHAR2(20)
 SALARY                                             NUMBER
 BIRTH                                              DATE
 EMAIL                                              VARCHAR2(20)
 GRADE                                              VARCHAR2(4)

SQL> select * from sosi;

        ID NAME                                         SALARY BIRTH            
---------- ---------------------------------------- ---------- --------         
EMAIL                                    GRADE                                  
---------------------------------------- --------                               
      7789 hong                                             79 21/07/06         
bc@sk.com                                C                                      
                                                                                
      7754 kim                                              57 21/07/06         
aa@sk.com                                A                                      
                                                                                
      7790 lee                                              23 21/07/06         
bb@sk.com                                F                                      
                                                                                

        ID NAME                                         SALARY BIRTH            
---------- ---------------------------------------- ---------- --------         
EMAIL                                    GRADE                                  
---------------------------------------- --------                               
         7 김고은                                          100 17/12/12         
aa@girl.com                              A                                      
                                                                                
         6 태연                                            100 19/12/12         
aa@girl.com                              A                                      
                                                                                
         4 홍길동                                          100 20/07/05         
bt@ko.com                                A                                      
                                                                                

        ID NAME                                         SALARY BIRTH            
---------- ---------------------------------------- ---------- --------         
EMAIL                                    GRADE                                  
---------------------------------------- --------                               
         3 제니                                            120 17/10/25         
cc@girl.com                              C                                      
                                                                                
         2 수영                                             90 21/07/06         
dd@girl.com                              A                                      
                                                                                

8 rows selected.

SQL> select * from sosi where garde = 'A';
select * from sosi where garde = 'A'
                         *
ERROR at line 1:
ORA-00904: "GARDE": invalid identifier 


SQL> select * from sosi where grade = 'A';

        ID NAME                                         SALARY BIRTH            
---------- ---------------------------------------- ---------- --------         
EMAIL                                    GRADE                                  
---------------------------------------- --------                               
      7754 kim                                              57 21/07/06         
aa@sk.com                                A                                      
                                                                                
         7 김고은                                          100 17/12/12         
aa@girl.com                              A                                      
                                                                                
         6 태연                                            100 19/12/12         
aa@girl.com                              A                                      
                                                                                

        ID NAME                                         SALARY BIRTH            
---------- ---------------------------------------- ---------- --------         
EMAIL                                    GRADE                                  
---------------------------------------- --------                               
         4 홍길동                                          100 20/07/05         
bt@ko.com                                A                                      
                                                                                
         2 수영                                             90 21/07/06         
dd@girl.com                              A                                      
                                                                                

SQL> select * from sosi where salary >= 90 ;

        ID NAME                                         SALARY BIRTH            
---------- ---------------------------------------- ---------- --------         
EMAIL                                    GRADE                                  
---------------------------------------- --------                               
         7 김고은                                          100 17/12/12         
aa@girl.com                              A                                      
                                                                                
         6 태연                                            100 19/12/12         
aa@girl.com                              A                                      
                                                                                
         4 홍길동                                          100 20/07/05         
bt@ko.com                                A                                      
                                                                                

        ID NAME                                         SALARY BIRTH            
---------- ---------------------------------------- ---------- --------         
EMAIL                                    GRADE                                  
---------------------------------------- --------                               
         3 제니                                            120 17/10/25         
cc@girl.com                              C                                      
                                                                                
         2 수영                                             90 21/07/06         
dd@girl.com                              A                                      
                                                                                

SQL> select * from sosi where salary < 90 ;

        ID NAME                                         SALARY BIRTH            
---------- ---------------------------------------- ---------- --------         
EMAIL                                    GRADE                                  
---------------------------------------- --------                               
      7789 hong                                             79 21/07/06         
bc@sk.com                                C                                      
                                                                                
      7754 kim                                              57 21/07/06         
aa@sk.com                                A                                      
                                                                                
      7790 lee                                              23 21/07/06         
bb@sk.com                                F                                      
                                                                                

SQL> select * from sosi where salary = 90 ;

        ID NAME                                         SALARY BIRTH            
---------- ---------------------------------------- ---------- --------         
EMAIL                                    GRADE                                  
---------------------------------------- --------                               
         2 수영                                             90 21/07/06         
dd@girl.com                              A                                      
                                                                                

SQL> column name format a10;
SQL> col email for a10;
SQL> col name for a10;
SQL> select * from sosi;

        ID NAME           SALARY BIRTH    EMAIL      GRADE                      
---------- ---------- ---------- -------- ---------- --------                   
      7789 hong               79 21/07/06 bc@sk.com  C                          
      7754 kim                57 21/07/06 aa@sk.com  A                          
      7790 lee                23 21/07/06 bb@sk.com  F                          
         7 김고은            100 17/12/12 aa@girl.co A                          
                                          m                                     
                                                                                
         6 태연              100 19/12/12 aa@girl.co A                          
                                          m                                     
                                                                                
         4 홍길동            100 20/07/05 bt@ko.com  A                          
         3 제니              120 17/10/25 cc@girl.co C                          

        ID NAME           SALARY BIRTH    EMAIL      GRADE                      
---------- ---------- ---------- -------- ---------- --------                   
                                          m                                     
                                                                                
         2 수영               90 21/07/06 dd@girl.co A                          
                                          m                                     
                                                                                

8 rows selected.

SQL> col email for a15;
SQL> select * from sosi;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
      7790 lee                23 21/07/06 bb@sk.com       F                     
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     
         3 제니              120 17/10/25 cc@girl.com     C                     
         2 수영               90 21/07/06 dd@girl.com     A                     

8 rows selected.

SQL> select * from sosi where salary >= 90 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     
         3 제니              120 17/10/25 cc@girl.com     C                     
         2 수영               90 21/07/06 dd@girl.com     A                     

SQL> select * from sosi where salary < 90 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
      7790 lee                23 21/07/06 bb@sk.com       F                     

SQL> select * from sosi where salary = 90 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
         2 수영               90 21/07/06 dd@girl.com     A                     

SQL> select * from sosi where salary >= 70 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     
         3 제니              120 17/10/25 cc@girl.com     C                     
         2 수영               90 21/07/06 dd@girl.com     A                     

6 rows selected.

SQL> 
SQL> 
SQL> select * from sosi where salary < 70 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7754 kim                57 21/07/06 aa@sk.com       A                     
      7790 lee                23 21/07/06 bb@sk.com       F                     

SQL> select * from sosi where salary = 70 ;

no rows selected

SQL> select * from sosi where salary = 100 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     

SQL> select * from sosi where salary <= 90 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
      7790 lee                23 21/07/06 bb@sk.com       F                     
         2 수영               90 21/07/06 dd@girl.com     A                     

SQL> select * from sosi where salary >=50 and <=90 ;
select * from sosi where salary >=50 and <=90 
                                         *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select * from sosi where salary >= 50; and <= 90 ;
select * from sosi where salary >= 50; and <= 90 
                                     *
ERROR at line 1:
ORA-00911: invalid character 


SQL> select * from sosi where salary >= 50 and <= 100 ;
select * from sosi where salary >= 50 and <= 100 
                                          *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select * from sosi where salary  50 and  90 ;
select * from sosi where salary  50 and  90 
                                 *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> select * from sosi where salary >= 50 and salary <= 100 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     
         2 수영               90 21/07/06 dd@girl.com     A                     

6 rows selected.

SQL> select * from sosi where salary >= 50 and salary <= 90 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
         2 수영               90 21/07/06 dd@girl.com     A                     

SQL> select * from sosi where salary between 50 and 90 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
         2 수영               90 21/07/06 dd@girl.com     A                     

SQL> select * from sosi where name = 'cake';

no rows selected

SQL> select * from sosi where name = 'kim';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7754 kim                57 21/07/06 aa@sk.com       A                     

SQL> select * from sosi where name = 'Kim';

no rows selected

SQL> select * from sosi where name = 'KIM';

no rows selected

SQL> select * from sosi where name = 'kim';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7754 kim                57 21/07/06 aa@sk.com       A                     

SQL> insert into sosi values(3335, 'test', 25, sysdate , 'ta@nc.com', 'C');

1 row created.

SQL> insert into sosi values(3377, 'coffee', 94, sysdate , 'tc@kt.com', 'C');

1 row created.

SQL> insert into sosi values(3399, 'goo', 55, sysdate , 'ga@LG.com', 'D');

1 row created.

SQL> select * from sosi where name = 'test';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      3335 test               25 21/07/07 ta@nc.com       C                     

SQL> select * from sosi where name = 'Test';

no rows selected

SQL> select * from sosi where name = 'TEST';

no rows selected

SQL> select * from sosi where name = 'test';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      3335 test               25 21/07/07 ta@nc.com       C                     

SQL> 
SQL> 
SQL> 
SQL> 
SQL> insert into sosi(id,name,salary,birth,grade) values(4411, 'aaa', 55, sysdate,'B');

1 row created.

SQL> insert into sosi(id,name,birth,email,grade) values(4455, 'bbb', sysdate,'ss@LG.com, 'B');
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> insert into sosi(id,name,birth,email,grade) values(4455, 'bbb', sysdate,'ss@LG.com', 'B');

1 row created.

SQL> insert into sosi(id,name,birth,email,grade) values(4490, 'aaa', sysdate,'ss@LG.com', 'B');

1 row created.

SQL> select * from sosi;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
      7790 lee                23 21/07/06 bb@sk.com       F                     
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     
         3 제니              120 17/10/25 cc@girl.com     C                     
         2 수영               90 21/07/06 dd@girl.com     A                     
      3335 test               25 21/07/07 ta@nc.com       C                     
      3377 coffee             94 21/07/07 tc@kt.com       C                     
      3399 goo                55 21/07/07 ga@LG.com       D                     

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      4411 aaa                55 21/07/07                 B                     
      4455 bbb                   21/07/07 ss@LG.com       B                     
      4490 aaa                   21/07/07 ss@LG.com       B                     

14 rows selected.

SQL> select * from sosi where name = 'a';

no rows selected

SQL> select * from sosi where name = 'lee';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7790 lee                23 21/07/06 bb@sk.com       F                     

SQL> select * from sosi where name like '%e%';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7790 lee                23 21/07/06 bb@sk.com       F                     
      3335 test               25 21/07/07 ta@nc.com       C                     
      3377 coffee             94 21/07/07 tc@kt.com       C                     

SQL> select * from sosi where name like '%a%';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      4411 aaa                55 21/07/07                 B                     
      4490 aaa                   21/07/07 ss@LG.com       B                     

SQL> select * from sosi where name like '%o%';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      3377 coffee             94 21/07/07 tc@kt.com       C                     
      3399 goo                55 21/07/07 ga@LG.com       D                     

SQL> select * from sosi where id like '%9%';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7790 lee                23 21/07/06 bb@sk.com       F                     
      3399 goo                55 21/07/07 ga@LG.com       D                     
      4490 aaa                   21/07/07 ss@LG.com       B                     

SQL> select * from sosi where salary = null;

no rows selected

SQL> select * from sosi where salary = not null;
select * from sosi where salary = not null
                                  *
ERROR at line 1:
ORA-00936: missing expression 


SQL> select * from sosi where salary is null;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      4455 bbb                   21/07/07 ss@LG.com       B                     
      4490 aaa                   21/07/07 ss@LG.com       B                     

SQL> select * from sosi where salary is not null;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
      7790 lee                23 21/07/06 bb@sk.com       F                     
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     
         3 제니              120 17/10/25 cc@girl.com     C                     
         2 수영               90 21/07/06 dd@girl.com     A                     
      3335 test               25 21/07/07 ta@nc.com       C                     
      3377 coffee             94 21/07/07 tc@kt.com       C                     
      3399 goo                55 21/07/07 ga@LG.com       D                     

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      4411 aaa                55 21/07/07                 B                     

12 rows selected.

SQL> select * from sosi where name like '%e%';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7790 lee                23 21/07/06 bb@sk.com       F                     
      3335 test               25 21/07/07 ta@nc.com       C                     
      3377 coffee             94 21/07/07 tc@kt.com       C                     

SQL> select * from sosi where name like '%e%' and salary  >= 70 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      3377 coffee             94 21/07/07 tc@kt.com       C                     

SQL> select * from sosi where name like '%e%' or salary  >= 70 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7790 lee                23 21/07/06 bb@sk.com       F                     
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     
         3 제니              120 17/10/25 cc@girl.com     C                     
         2 수영               90 21/07/06 dd@girl.com     A                     
      3335 test               25 21/07/07 ta@nc.com       C                     
      3377 coffee             94 21/07/07 tc@kt.com       C                     

9 rows selected.

SQL> clear screen

SQL> select * from sosi;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
      7790 lee                23 21/07/06 bb@sk.com       F                     
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     
         3 제니              120 17/10/25 cc@girl.com     C                     
         2 수영               90 21/07/06 dd@girl.com     A                     
      3335 test               25 21/07/07 ta@nc.com       C                     
      3377 coffee             94 21/07/07 tc@kt.com       C                     
      3399 goo                55 21/07/07 ga@LG.com       D                     

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      4411 aaa                55 21/07/07                 B                     
      4455 bbb                   21/07/07 ss@LG.com       B                     
      4490 aaa                   21/07/07 ss@LG.com       B                     

14 rows selected.

SQL> select * from sosi where name like '%e%';

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7790 lee                23 21/07/06 bb@sk.com       F                     
      3335 test               25 21/07/07 ta@nc.com       C                     
      3377 coffee             94 21/07/07 tc@kt.com       C                     

SQL> select * from sosi where salary >= 70;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     
         3 제니              120 17/10/25 cc@girl.com     C                     
         2 수영               90 21/07/06 dd@girl.com     A                     
      3377 coffee             94 21/07/07 tc@kt.com       C                     

7 rows selected.

SQL> select * from sosi where name like '%e%' or salary  >= 50 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong               79 21/07/06 bc@sk.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
      7790 lee                23 21/07/06 bb@sk.com       F                     
         7 김고은            100 17/12/12 aa@girl.com     A                     
         6 태연              100 19/12/12 aa@girl.com     A                     
         4 홍길동            100 20/07/05 bt@ko.com       A                     
         3 제니              120 17/10/25 cc@girl.com     C                     
         2 수영               90 21/07/06 dd@girl.com     A                     
      3335 test               25 21/07/07 ta@nc.com       C                     
      3377 coffee             94 21/07/07 tc@kt.com       C                     
      3399 goo                55 21/07/07 ga@LG.com       D                     

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      4411 aaa                55 21/07/07                 B                     

12 rows selected.

SQL> select * from sosi where name like '%e%' and  salary  >= 50 ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      3377 coffee             94 21/07/07 tc@kt.com       C                     

SQL> select * from sosi where id 3000 and id 3335;
select * from sosi where id 3000 and id 3335
                            *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> select * from sosi where name = 'lee'
  2  ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7790 lee                23 21/07/06 bb@sk.com       F                     

SQL> select * from sosi where name = 'lee' and name = 'test'
  2  ;

no rows selected

SQL> select * from sosi where name = 'lee' or name = 'test'
  2  ;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7790 lee                23 21/07/06 bb@sk.com       F                     
      3335 test               25 21/07/07 ta@nc.com       C                     

SQL> select * from sosi where name in( 'lee' ,'test');

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7790 lee                23 21/07/06 bb@sk.com       F                     
      3335 test               25 21/07/07 ta@nc.com       C                     

SQL> select * from sosi where name in( 'lee' ,'test','kim');

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7754 kim                57 21/07/06 aa@sk.com       A                     
      7790 lee                23 21/07/06 bb@sk.com       F                     
      3335 test               25 21/07/07 ta@nc.com       C                     

SQL> select * from sosi where id in( 3335 ,7754,7790);

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      3335 test               25 21/07/07 ta@nc.com       C                     
      7754 kim                57 21/07/06 aa@sk.com       A                     
      7790 lee                23 21/07/06 bb@sk.com       F                     

SQL> select count(id) as cnt from sosi;

       CNT                                                                      
----------                                                                      
        14                                                                      

SQL> select count(*) as cnt from sosi;

       CNT                                                                      
----------                                                                      
        14                                                                      

SQL> select count(salary) as cnt from sosi;

       CNT                                                                      
----------                                                                      
        12                                                                      

SQL> select count(salary) as 'cnt' from sosi;
select count(salary) as 'cnt' from sosi
                        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select count(salary) as "cnt" from sosi;

       cnt                                                                      
----------                                                                      
        12                                                                      

SQL> select count(salary) as cnt from sosi;

       CNT                                                                      
----------                                                                      
        12                                                                      

SQL> clear screen

SQL> update sosi set salary = salary*2.78;

14 rows updated.

SQL> commit;

Commit complete.

SQL> select * from sosi;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong           219.62 21/07/06 bc@sk.com       C                     
      7754 kim            158.46 21/07/06 aa@sk.com       A                     
      7790 lee             63.94 21/07/06 bb@sk.com       F                     
         7 김고은            278 17/12/12 aa@girl.com     A                     
         6 태연              278 19/12/12 aa@girl.com     A                     
         4 홍길동            278 20/07/05 bt@ko.com       A                     
         3 제니            333.6 17/10/25 cc@girl.com     C                     
         2 수영            250.2 21/07/06 dd@girl.com     A                     
      3335 test             69.5 21/07/07 ta@nc.com       C                     
      3377 coffee         261.32 21/07/07 tc@kt.com       C                     
      3399 goo             152.9 21/07/07 ga@LG.com       D                     

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      4411 aaa             152.9 21/07/07                 B                     
      4455 bbb                   21/07/07 ss@LG.com       B                     
      4490 aaa                   21/07/07 ss@LG.com       B                     

14 rows selected.

SQL> 
SQL> 
SQL> select name,salary, trunc(salary,2) from sosi;

NAME           SALARY TRUNC(SALARY,2)                                           
---------- ---------- ---------------                                           
hong           219.62          219.62                                           
kim            158.46          158.46                                           
lee             63.94           63.94                                           
김고은            278             278                                           
태연              278             278                                           
홍길동            278             278                                           
제니            333.6           333.6                                           
수영            250.2           250.2                                           
test             69.5            69.5                                           
coffee         261.32          261.32                                           
goo             152.9           152.9                                           

NAME           SALARY TRUNC(SALARY,2)                                           
---------- ---------- ---------------                                           
aaa             152.9           152.9                                           
bbb                                                                             
aaa                                                                             

14 rows selected.

SQL> select name,salary, round(salary,2) from sosi;

NAME           SALARY ROUND(SALARY,2)                                           
---------- ---------- ---------------                                           
hong           219.62          219.62                                           
kim            158.46          158.46                                           
lee             63.94           63.94                                           
김고은            278             278                                           
태연              278             278                                           
홍길동            278             278                                           
제니            333.6           333.6                                           
수영            250.2           250.2                                           
test             69.5            69.5                                           
coffee         261.32          261.32                                           
goo             152.9           152.9                                           

NAME           SALARY ROUND(SALARY,2)                                           
---------- ---------- ---------------                                           
aaa             152.9           152.9                                           
bbb                                                                             
aaa                                                                             

14 rows selected.

SQL> select name,salary, floor(salary,2) from sosi;
select name,salary, floor(salary,2) from sosi
                    *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select name,salary, floor(salary) from sosi;

NAME           SALARY FLOOR(SALARY)                                             
---------- ---------- -------------                                             
hong           219.62           219                                             
kim            158.46           158                                             
lee             63.94            63                                             
김고은            278           278                                             
태연              278           278                                             
홍길동            278           278                                             
제니            333.6           333                                             
수영            250.2           250                                             
test             69.5            69                                             
coffee         261.32           261                                             
goo             152.9           152                                             

NAME           SALARY FLOOR(SALARY)                                             
---------- ---------- -------------                                             
aaa             152.9           152                                             
bbb                                                                             
aaa                                                                             

14 rows selected.

SQL> update sosi set salary = salary*1.378;

14 rows updated.

SQL> commit;

Commit complete.

SQL> select * from sosi;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong        302.63636 21/07/06 bc@sk.com       C                     
      7754 kim         218.35788 21/07/06 aa@sk.com       A                     
      7790 lee          88.10932 21/07/06 bb@sk.com       F                     
         7 김고은        383.084 17/12/12 aa@girl.com     A                     
         6 태연          383.084 19/12/12 aa@girl.com     A                     
         4 홍길동        383.084 20/07/05 bt@ko.com       A                     
         3 제니         459.7008 17/10/25 cc@girl.com     C                     
         2 수영         344.7756 21/07/06 dd@girl.com     A                     
      3335 test           95.771 21/07/07 ta@nc.com       C                     
      3377 coffee      360.09896 21/07/07 tc@kt.com       C                     
      3399 goo          210.6962 21/07/07 ga@LG.com       D                     

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      4411 aaa          210.6962 21/07/07                 B                     
      4455 bbb                   21/07/07 ss@LG.com       B                     
      4490 aaa                   21/07/07 ss@LG.com       B                     

14 rows selected.

SQL> select name,salary, trunc(salary,2) from sosi;

NAME           SALARY TRUNC(SALARY,2)                                           
---------- ---------- ---------------                                           
hong        302.63636          302.63                                           
kim         218.35788          218.35                                           
lee          88.10932            88.1                                           
김고은        383.084          383.08                                           
태연          383.084          383.08                                           
홍길동        383.084          383.08                                           
제니         459.7008           459.7                                           
수영         344.7756          344.77                                           
test           95.771           95.77                                           
coffee      360.09896          360.09                                           
goo          210.6962          210.69                                           

NAME           SALARY TRUNC(SALARY,2)                                           
---------- ---------- ---------------                                           
aaa          210.6962          210.69                                           
bbb                                                                             
aaa                                                                             

14 rows selected.

SQL> update sosi set salary= 1.378 where salary is null;

2 rows updated.

SQL> commit;

Commit complete.

SQL> select * from sosi;

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      7789 hong        302.63636 21/07/06 bc@sk.com       C                     
      7754 kim         218.35788 21/07/06 aa@sk.com       A                     
      7790 lee          88.10932 21/07/06 bb@sk.com       F                     
         7 김고은        383.084 17/12/12 aa@girl.com     A                     
         6 태연          383.084 19/12/12 aa@girl.com     A                     
         4 홍길동        383.084 20/07/05 bt@ko.com       A                     
         3 제니         459.7008 17/10/25 cc@girl.com     C                     
         2 수영         344.7756 21/07/06 dd@girl.com     A                     
      3335 test           95.771 21/07/07 ta@nc.com       C                     
      3377 coffee      360.09896 21/07/07 tc@kt.com       C                     
      3399 goo          210.6962 21/07/07 ga@LG.com       D                     

        ID NAME           SALARY BIRTH    EMAIL           GRADE                 
---------- ---------- ---------- -------- --------------- --------              
      4411 aaa          210.6962 21/07/07                 B                     
      4455 bbb             1.378 21/07/07 ss@LG.com       B                     
      4490 aaa             1.378 21/07/07 ss@LG.com       B                     

14 rows selected.

SQL> select name,salary, trunc(salary,4) from sosi;

NAME           SALARY TRUNC(SALARY,4)                                           
---------- ---------- ---------------                                           
hong        302.63636        302.6363                                           
kim         218.35788        218.3578                                           
lee          88.10932         88.1093                                           
김고은        383.084         383.084                                           
태연          383.084         383.084                                           
홍길동        383.084         383.084                                           
제니         459.7008        459.7008                                           
수영         344.7756        344.7756                                           
test           95.771          95.771                                           
coffee      360.09896        360.0989                                           
goo          210.6962        210.6962                                           

NAME           SALARY TRUNC(SALARY,4)                                           
---------- ---------- ---------------                                           
aaa          210.6962        210.6962                                           
bbb             1.378           1.378                                           
aaa             1.378           1.378                                           

14 rows selected.

SQL> select name,salary, round(salary,4) from sosi;

NAME           SALARY ROUND(SALARY,4)                                           
---------- ---------- ---------------                                           
hong        302.63636        302.6364                                           
kim         218.35788        218.3579                                           
lee          88.10932         88.1093                                           
김고은        383.084         383.084                                           
태연          383.084         383.084                                           
홍길동        383.084         383.084                                           
제니         459.7008        459.7008                                           
수영         344.7756        344.7756                                           
test           95.771          95.771                                           
coffee      360.09896         360.099                                           
goo          210.6962        210.6962                                           

NAME           SALARY ROUND(SALARY,4)                                           
---------- ---------- ---------------                                           
aaa          210.6962        210.6962                                           
bbb             1.378           1.378                                           
aaa             1.378           1.378                                           

14 rows selected.

SQL> select name,salary, round((avg)salary,4) from sosi;
select name,salary, round((avg)salary,4) from sosi
                               *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> select name,salary, round(avg(salary,4)) from sosi;
select name,salary, round(avg(salary,4)) from sosi
                          *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select name,salary, trunc(avg(salary,2)) from sosi;
select name,salary, trunc(avg(salary,2)) from sosi
                          *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select name,salary, trunc(avg(salary,2)) from sosi;
select name,salary, trunc(avg(salary,2)) from sosi
                          *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select name,salary, trunc(salary,2)) from sosi;
select name,salary, trunc(salary,2)) from sosi
                                   *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select name,salary, trunc(avg(salary,2) from sosi;
select name,salary, trunc(avg(salary,2) from sosi
                          *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select name,salary, trunc(avg(salary,2)) from sosi;
select name,salary, trunc(avg(salary,2)) from sosi
                          *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select name,salary, trunc(salary,2) from sosi;

NAME           SALARY TRUNC(SALARY,2)                                           
---------- ---------- ---------------                                           
hong        302.63636          302.63                                           
kim         218.35788          218.35                                           
lee          88.10932            88.1                                           
김고은        383.084          383.08                                           
태연          383.084          383.08                                           
홍길동        383.084          383.08                                           
제니         459.7008           459.7                                           
수영         344.7756          344.77                                           
test           95.771           95.77                                           
coffee      360.09896          360.09                                           
goo          210.6962          210.69                                           

NAME           SALARY TRUNC(SALARY,2)                                           
---------- ---------- ---------------                                           
aaa          210.6962          210.69                                           
bbb             1.378            1.37                                           
aaa             1.378            1.37                                           

14 rows selected.

SQL> exit
