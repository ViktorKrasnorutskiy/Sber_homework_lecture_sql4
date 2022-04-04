--task1  (lesson7)

--task2  (lesson7)
-- oracle: https://leetcode.com/problems/duplicate-emails/
select email
from person
group by email
having count(*)>1


--task3  (lesson7)
-- oracle: https://leetcode.com/problems/employees-earning-more-than-their-managers/
select e1.Name as 'Employee' from Employee e1
join Employee e2 on e1.ManagerId = e2.Id
where e1.Salary > e2.Salary


--task4  (lesson7)
-- oracle: https://leetcode.com/problems/rank-scores/
select score, dense_rank() over (order by score desc) as 'rank'
from scores


--task5  (lesson7)
-- oracle: https://leetcode.com/problems/combine-two-tables/
select firstName, lastName, city, state from person p
left join address a on p.personId = a.personId
