# Pewlett-Hackard-Analysis
## Overview of the Analysis:
The purpose of this analysis is to provide the number of staff who will be 
retiring (by title) and a list of employees eligible for the mentorship program.


## RESULTS 

### Number of Staff Retiring (by title)
There seems to be a very large number of senior staff retiring but few managers:
* There are 25,916 Senior Engineers retiring
* There are 24,926 Senior Staff retiring
* There are only 2 managers retiring

### Number of employees eligible for the mentoring program
* There are 1549 employees eligible for the mentorship program (the count of employees was queried from the mentorship_eligibility table)

## SUMMARY
### Overall Results
Pewlett Hackard is a large company with many employees near retirement in several different roles and more than 50,000 of those individuals are in senior positions (Senior Enginners or Senior Staff).  For company continuity, the company has decided to utilize a mentorship program and this analysis has determined that 1549 of employees are eligible to participate in that program. 

#### Proposed Additions
##### Count of Retirees by Department and Title
While it is good to know the number of people in each role that are retiring, I believe it would be helpful
to have that information broken down by department.  I added created a new table adding dept_name unique titles 
table and then used the query below to create a .csv file that lists the number of people by department by role.  
The list is ordered so that the departments are alphabetical(ascending) and the titles are ordered descending 
so that the role with the highest number of retirements is at the top for each department.
INPUT PICTURE OF CODE and link to .csv

##### Count of Employees by Department and Title who are Elibible for the Mentorship Program
We already have the list of employees that are eligible for the mentorship program.  However, I believe there would be important to be able to identify the number of individuals
in specific roles within each department to allow alignment with appropriate mentors.  With that in mind, I added the department name to the mentorship
eligibility table and then used the query below to create a .csv file that lists the number of people by department and role.
This table doesn't provide the names of the individuals but gives numbers.    

######  Example of why I Chose These Data Views
As an example, when comparing unique_titles_w_dept.csv and menrshp_elig_by_dept_title.csv we see that there are 79 senior staff in Customer Service who are eligble for the mentorship program and 2819 senior staff who are retiring.  There is ample opportunity to identify mentors in that role and department.
