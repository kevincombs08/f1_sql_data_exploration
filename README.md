# Welcome to my F1 MySQL analysis & Tableau visualization!
I was really just looking to have some fun, continue to master my skills, and 
unlock some insights around F1 and it's growing international popularity. Thanks 
for checking it out! Stay tuned for more projects. 

# Feel free to give me a follow on LinkedIn! 
https://www.linkedin.com/in/senior-media-buyer-analyst/

I love talk data and am constantly looking for ways to level up. I've only scratched the surface on Python & R and look forward to implementing in future projects. 

# Project Progression

-- Started cleaning CSV files and there were some that needed more care than others. drivers.csv, results.csv, sprint_results.csv, races.csv, all needed care. For the most part I implemented functions, text to columns, etc within Excel to quickly organize before importing into MySQL. In one instance, I used a bit of Python to clean driver.csv data that imported special characters into the name. 

![Python Character Cleaning](https://user-images.githubusercontent.com/126277909/225412227-5cc7e17e-a264-4faf-b7a6-3c5f0543f18b.png)

-- In other instances, MySQL didn't import all of the rows. In this instance I manually formatted the Excel data with a custom function to easy copy and paste 50+ rows for manually inserting the data into the pre-existing tables. Might've been a roundabout way, but it worked for me and quickly got the results I needed.

<img width="343" alt="Screen Shot 2023-03-15 at 1 49 20 PM" src="https://user-images.githubusercontent.com/126277909/225413054-8067a80d-a688-4884-b205-eba9ecb29ca6.png">

![Drivers.csv Cleaning](https://user-images.githubusercontent.com/126277909/225413148-4407fa6c-dc03-49cb-bb46-096979f284c8.png)

-- I'll make sure to highlight the latter half of this implementation so one can see the query in use thanks to this custom function. Once importing all CSVs into MySQL, we got into some querying. Check out f1_wc.sql for my queries. 

# Again, thank you for stopping by!

