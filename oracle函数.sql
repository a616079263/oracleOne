--�ַ�����

-- upper
select upper('abcde') from dual;
select * from emp where ename = upper('smith');

--lower
select lower('ABCDE') from dual;

--initcap
select initcap(ename) from emp;

--concat
select concat('a','b') from dual; --�ַ���ƴ��
select 'a'||'b' from dual;

--substr
select substr('abcde',length('abcde')-2) from dual;
select substr('abcde',-3,3) from dual; --������3������3���ַ���

--length
select length(ename) from emp;

--Replace
select Replace(ename,'A','a') from emp;--�ַ����滻
select translate('SMITH','SM','O11') from dual;--�����ַ��滻

--Instr
select instr('Hello World','or') from dual;--�����ַ�����ʼ�±�

--Lpad
select lpad('zhou chao is papa',6,'*') from dual;--�ַ�������6�������**

--Rpad
select rpad('zhou chao',24,' is qukef papa') from dual;

--trim
select trim('zhou chao') from dual;
