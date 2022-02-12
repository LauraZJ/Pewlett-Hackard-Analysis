# Pewlett-Hackard-Analysis
## overview of the analysis:
The purpose of this analysis is to provide a list of the number of staff who will be 
retiring (by title) and a list of employees eligible for the mentorship program.


## RESULTS 
there is a bulleted list with four major points from the two analysis deliverables
### Number of Staff Retiring (by title)
There seems to be a very large number of senior staff retiring but few managers:
* There are 25,916 Senior Engineers retiring
* There are 24,926 Senior Staff retiring
* There are only 2 managers retiring
### Number of employees eligible for the mentoring program
* There are 1549 employees eligible for the mentorship program

## SUMMARY
Addresses the two questions and contains two additional queries or tables that may provide more insight.
1. While it is great to have the number of people in each role that are retiring, it would be very helpful
to have that information broken down by department.  I added created a new table adding dept_name unique titles 
table and then used the query below to create a .csv file that lists the number of people by department by role.  
The list is ordered so that the departments are alphabetical(ascending) and the titles are ordered descending 
so that the role with the highest number of retirements is at the top for each department.
INPUT PICTURE OF CODE and link to .csv

2. I also believe that it would be important to ensure that we have mentorship opportunities for people in roles
aligned with departments that have retirements pending. With that in mind, I added the department name to the mentorship
eligibility table and then used the query below to create a .csv file that lists the number of people by department and role.
This table doesn't provide the names of the individuals but gives numbers.    As an example, when comparing unique_titles_w_dept.csv 
and menrshp_elig_by_dept_title.csv we see that there are 79 senior staff in Customer Service who are eligble for the mentorship program
and 2819 senior staff who are retiring.  There is ample opportunity to identify mentors in that role and department.
