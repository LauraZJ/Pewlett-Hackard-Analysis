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
-- INTO mentorship_eligibility
FROM employees as e
JOIN dept_emp as de
	on e.emp_no=de.emp_no
	JOIN titles as t
	on e.emp_no=t.emp_no
WHERE de.to_date = ('9999-01-01') AND e.birth_date BETWEEN ('1965-01-01') AND ('1965-12-31')
ORDER by e.emp_no;