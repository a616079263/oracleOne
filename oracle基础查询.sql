---------------------模糊查询like语句的使用--------------------
select * from emp where ename like '%*_%'escape '*'; --%表示0或多个字符

--上面的 escape 表示*后面的那个符号不当成特殊字符处理，就是查找普通的_符号

---------------------逻辑运算符 or and not-------------------------------
--选择部门id为30的员工
select * from emp where deptno = 30;

--列出职位为manager的员工
select * from emp where job = 'MANAGER';

--找出奖金高于工资的员工
select * from emp where comm > sal;

--找出每个员工工资和奖金的总和
select ename,sal+comm as nums from emp;

--找出部门10的经理，部门20的员工
select ename,deptno,job from emp where (deptno='10' or deptno = '20') and (job ='MANAGER' or job = 'CLERK') ;--错误写法
Select * from emp where (deptno='10' and job='MANAGER') or (deptno='20' and job='CLERK');--正确写法

--找出部门 10 中既不是经理也不是普通员工，而且工资大于等于 2000 的员工
select * from emp where deptno = '10' and (job != 'MANAGER' and job != 'CLERK') and sal>2000;
Select * from emp where deptno='10' and job not in('MANAGER','CLERK')  and sal>=2000;

--找出有奖金的员工的不同工作
select distinct(job),ename from emp where comm is not null and comm > 0;

--找出没有奖金或者奖金低于 500 的员工
select * from emp where comm is null or comm=0 or comm < 500;
Select * from emp where comm<500 or comm is null;

--显示雇员姓名，根据其服务年限，将最老的雇员排在最前面
select * from emp order by hiredate asc;
