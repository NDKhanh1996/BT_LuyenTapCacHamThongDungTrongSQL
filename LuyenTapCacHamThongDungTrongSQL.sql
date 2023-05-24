use QuanLySinhVien;

select address, count(studentId) as 'so luong hoc vien'
from Student
group by address
;

select S.studentId, S.StudentName, AVG(Mark)
from Student as S join Mark as M on S.studentId = M.studentId
group by S.studentId, S.studentName
;

select S.studentId, S.StudentName, AVG(Mark)
from Student as S join Mark as M on S.studentId = M.studentId
group by S.studentId, S.studentName
having AVG(Mark) > 15
;

select S.studentId, S.StudentName, AVG(Mark) as 'AVG score', MAX('AVG score')
from Student as S join Mark as M on S.studentId = M.studentId
group by S.studentId, S.studentName
;


select *
from subject 
where credit = (select max(credit) from subject)
;

select Sub.*
from Mark as M join Subject as Sub on M.SubId = Sub.SubId
where mark = (select max(mark) from mark)
;

select Student.*, AVG(Mark.Mark) as 'AVG Score'
from Student left join Mark on Student.StudentId = Mark.StudentId
group by Student.studentId
;
