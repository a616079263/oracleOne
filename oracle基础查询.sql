---------------------ģ����ѯlike����ʹ��--------------------
select * from emp where ename like '%*_%'escape '*'; --%��ʾ0�����ַ�

--����� escape ��ʾ*������Ǹ����Ų����������ַ��������ǲ�����ͨ��_����

---------------------�߼������ or and not-------------------------------
--ѡ����idΪ30��Ա��
select * from emp where deptno = 30;

--�г�ְλΪmanager��Ա��
select * from emp where job = 'MANAGER';

--�ҳ�������ڹ��ʵ�Ա��
select * from emp where comm > sal;

--�ҳ�ÿ��Ա�����ʺͽ�����ܺ�
select ename,sal+comm as nums from emp;

--�ҳ�����10�ľ�������20��Ա��
select ename,deptno,job from emp where (deptno='10' or deptno = '20') and (job ='MANAGER' or job = 'CLERK') ;--����д��
Select * from emp where (deptno='10' and job='MANAGER') or (deptno='20' and job='CLERK');--��ȷд��

--�ҳ����� 10 �мȲ��Ǿ���Ҳ������ͨԱ�������ҹ��ʴ��ڵ��� 2000 ��Ա��
select * from emp where deptno = '10' and (job != 'MANAGER' and job != 'CLERK') and sal>2000;
Select * from emp where deptno='10' and job not in('MANAGER','CLERK')  and sal>=2000;

--�ҳ��н����Ա���Ĳ�ͬ����
select distinct(job),ename from emp where comm is not null and comm > 0;

--�ҳ�û�н�����߽������ 500 ��Ա��
select * from emp where comm is null or comm=0 or comm < 500;
Select * from emp where comm<500 or comm is null;

--��ʾ��Ա������������������ޣ������ϵĹ�Ա������ǰ��
select * from emp order by hiredate asc;
