--字符函数

-- upper
select upper('abcde') from dual;
select * from emp where ename = upper('smith');

--lower
select lower('ABCDE') from dual;

--initcap
select initcap(ename) from emp;

--concat
select concat('a','b') from dual; --字符串拼接
select 'a'||'b' from dual;

--substr
select substr('abcde',length('abcde')-2) from dual;
select substr('abcde',-3,3) from dual; --倒数第3个后面3个字符串

--length
select length(ename) from emp;

--Replace
select Replace(ename,'A','a') from emp;--字符串替换
select translate('SMITH','SM','O11') from dual;--单个字符替换

--Instr
select instr('Hello World','or') from dual;--查找字符串起始下标

--Lpad
select lpad('zhou chao is papa',6,'*') from dual;--字符串不满6个填充左**

--Rpad
select rpad('zhou chao',24,' is qukef papa') from dual;

--trim
select trim('zhou chao') from dual;
