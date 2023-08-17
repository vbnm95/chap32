select * from alpha;

select deptno
  from dept
 where dname = '경리부';

select distinct deptno
  from emp;

select deptno, 
       deptno * 10 as ad2, 
       deptno / 3 as div
  from emp
 where gender = 'M';
 
 select ename, sal, sal*12 as annual
   from emp;
   
select ename, sal, comm, sal*12 + nvl(comm, 0) as annual
  from emp;

select 10 * 10, 
       10 / 3,
       nvl(null, 100)
  from dual;
  
  
select trunc(dbms_random.value(0,1)*20+1) as line,
       trunc(dbms_random.value(0,1)*40+1) as col,
       trunc(dbms_random.value(0,1)*8+30) as fg,
       trunc(dbms_random.value(0,1)*8+40) as bg,
       dbms_random.string('u', 1) as ch
  from dual;
  
drop table alpha;

create table alpha(
    line number(2),
    col number(2),
    fg number(2),
    bg number(2),
    ch char(1)
);

insert into alpha
values( 
trunc(dbms_random.value(0,1)*20+1),
trunc(dbms_random.value(0,1)*40+1),
trunc(dbms_random.value(0,1)*8+30),
trunc(dbms_random.value(0,1)*8+40),
dbms_random.string('u', 1)
);

select *
  from alpha
 where bg in (43, 44);
 
select * 
  from emp
 where comm is null;

select count(*)
  from alpha;

select distinct line, col
  from alpha;
  
select ename || '의 직급은' || job || '입니다.' as 직급 
  from emp;

select '[' || line || ', ' || col || ', ' || fg || ', ' || bg || ', ' || ch ||']' as alpha
  from alpha;

select distinct deptno
  from emp;

select *
  from emp
 where deptno=10;
 
select *
  from alpha
 where ch = 'P';

select *
  from alpha
 where line > 10 and col > 10;
 
select *
  from emp
-- where deptno != 10;
 where not deptno = 10;
 
select empno, ename, job
  from emp
 where sal > 500
   and gender ='M';
    
select *
  from emp
 where comm is null;
 
select trunc(avg(sal))
  from emp
group by deptno;

select * from emp;

select job
  from emp
group by job
having avg(sal) > 300;

select *
  from emp
-- where sal >= 300 and sal <= 500;
 where sal between 300 and 500;

select *
  from emp
-- where deptno=10 or deptno=30;
 where deptno in (10, 20);
 
select *
  from country; 
 
 desc country;

select name, population
  from country
order by population desc;

select *
  from emp;
  
select *
  from emp
order by sal desc;

select * from dept;

select * from emp;

select a.deptno, b.dname, a.ename
from emp a join dept b
on a.deptno = b.deptno;

select a.deptno, b.ename
  from dept a, emp b;
  
select a.deptno, b.ename
  from dept a cross join emp b;

select * from alpha;
select count(*) from alpha;
delete from alpha where line =11;

update alpha
   set ch = 'Z'
 where line = 11;

update alpha
   set line = 11
 where ch = 'S';


commit;

   
