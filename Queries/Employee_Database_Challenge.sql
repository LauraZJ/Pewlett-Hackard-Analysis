-- Deliverable 1
-- create a retirement titles table
SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON e.emp_no=ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO Unique_Titles
FROM retirement_titles 
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;


-- Create  retiring titles table
SELECT Count(title), title
INTO retiring_titles
FROM unique_titles AS ut
Group by (title) 
order by count(title) desc;

-- Deliverable 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees as e
JOIN dept_emp as de
	on e.emp_no=de.emp_no
	JOIN titles as t
	on e.emp_no=t.emp_no
WHERE de.to_date = ('9999-01-01') AND e.birth_date BETWEEN ('1965-01-01') AND ('1965-12-31')
ORDER by e.emp_no;

-- Summary additional query 1
--add department name to unique titles 
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title,
d.dept_name
INTO Unique_Titles_w_dept
FROM retirement_titles AS rt
JOIN dept_emp AS de
	on rt.emp_no=de.emp_no
	JOIN departments AS d
		on de.dept_no=d.dept_no
WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

-- Sort list by department with # of titles
SELECT Count(title), dept_name, title
INTO retiring_titles_w_dept
FROM unique_titles_w_dept
Group by dept_name, title 
order by dept_name, count (title) desc;

-- Summary additional query 2
-- add dept to eligible employee list
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date, 
	de.from_date, 
	de.to_date, 
	t.title, 
	d.dept_name
INTO mentorship_eligibility_w_dept
FROM employees as e
JOIN dept_emp as de
	on e.emp_no=de.emp_no
	JOIN titles as t
	on e.emp_no=t.emp_no
	JOIN departments as d
		on de.dept_no=d.dept_no
WHERE de.to_date = ('9999-01-01') AND e.birth_date BETWEEN ('1965-01-01') AND ('1965-12-31')
ORDER by e.emp_no;

SELECT COUNT (title), dept_name, title
INTO menrshp_elig_by_dept_title
FROM mentorship_eligibility_w_dept
GROUP BY dept_name, title
ORDER by dept_name, count(title) desc;

