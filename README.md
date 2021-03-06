# My advice for beginners on Solving SQLs

### **General advice:** I went completely bananas with my approach fueled by my obsessive behavior on things that I find interesting. I would not recommend anyone spending long hours on a single activity. It is unhealthy and unsustainable! 
### Would you go all-in on your very first poker game? Naaaahh

I'm a civil engineer who worked on SQL related roles for 5 years and eventually decided to have a formal education on data science field. My roommates have not had prior work experience. They seem to worship LeetCode. They come to me with questions and I explain the approach. r/SQL and r/learnSQL on Reddit also had similar questions. It got me thinking - How would I do on these learning platforms?

Having experience in SQL, I knew not to spend too many days on LeetCode because being good at scripts is not the main criteria while looking into data (domain knowledge stands much higher in my opinion). I decided to dedicate just one single day. On a March 2021 night, I grabbed a big bowl of fruits, water, and some snacks for a 12-hour challenge that I set for myself to explore all SQL problems on LeetCode. It was a quantity over quality approach that I took to understand what beginners are asked to solve. A total of 152 problems meant that I had approximately 4 minutes for each. An unrealistic and silly goal given that it takes a couple of minutes to read and understand a problem. So, I changed the goal to “attempting as much as I can in 12 hours”.

Below are my thoughts and answers to some of the questions that I noticed many beginners have:

- Q1. As a beginner, where do I start?
  - A basic understanding of [discrete mathematics - set theory](https://www.math.uh.edu/~dlabate/settheory_Ashlock.pdf) is a must before you start with SQL. At least, the first 6 pages on the link. Also, [theory on RDBMS](https://www.tutorialspoint.com/sql/sql-rdbms-concepts.htm) - have an idea on all topics on the second link. It would be great if you can spend time understanding data architecture terms like granulairty, entity-relationship, tablespace, indexing, and partitioning. Review some schema diagrams to understand the reason behind such ERs.

- Q2. I end up with a wrong solution even when I’m confident with the theory. What am I doing wrong here?
  -   You’re not wrong, it's LeetCode! Some problems and test cases are unnecessarily tricky. So, don’t be demotivated that a website says ”WRONG ANSWER” in big bold and red font. It happens.

- Q3. How do I filter out good problems?
  - Problems that end with the roman number series (I, II, III, IV, V) are the best ones. They mimic real-world questions. Each table will have a great definition. The difficulty gets harder as you move on with the series. It will tell a story as you look back and it helps understand the reason behind each problem in the sequence. 

- Q4. How different is working in the industry when compared to LeetCode?
  - The complexity is similar but scale varies on your role. Think of it as combining 20 problems on LeetCode to solve in a week.
  - For software Engineers: You will access 2 highly indexed transaction tables at a time on average to get the required info displayed on your application. Execution time should be within a second. Most do not even require execution, just accessed through cache. (High user impact)
  - For Data Engineers (ETL): You will access 5 to 10 tables on average, perform checks, update lookups, and load facts. Execution time can go upto a couple of hours for batch loads as this would be a complete backend job. (Low user impact)
  - For Business Intelligence Engineers: Depends on the business area you work on as well as the schema definition. Execution time is normally under a minute. Anything more requires tuning or caching. 
    - For a simple scorecard on single area, you will access 2 facts and 5 dimensions.
    - For a comprehensive executive dashboard on multiple areas, you might access 3+ facts and 10+ dimensions.
  - For Data science Analytics: Hypothesis testing or A/B experimentations generally invloves tracking a single metric. To narrow down that single metric, you may join and filter on 2 to 3 other tables as per business scenarios. You could have multiple check metrics or guardrail metrics that comes from other tables. Again, this is a backend role that does not directly impact users, so execution time can be longer.
  - For Data science ML/AI: I haven't had a chance to work on this role yet. You will need to master scripting on some object oriented programming, data structures and algorithms for this role along with intuition on data. Rather than being too specific with data, this role requires high throughput of large volumes of clean data from distributed systems. Most models will only access data once in a given timeframe to learn parameters. Some models will repeatedly access data in batches to learn and update often.

- Q5. How many problems should I solve in a day?
  - Solve for as long as it is fun. You do not have to force yourself to solve a fixed number every day. I solved for 12 hours straight and it was fun. Somedays, I wake up saturated and can't solve for 12 minutes. If you're interested in "learning" databases, then it would be continuous learning as long as the industry keeps changing. On the other hand, for interview prep - LeetCode has a curated list of 70 SQL problems. Sort them by frequency and solve 30 easy, 10 medium and 5 hard ones.

- Q6. How long will it take to get good at SQL?
  - To start, pick 15 days and make progress each day. I’ve worked on SQL for few years and I still find myself learning something new once in a while. Practice helps a lot. Sometimes, I forget how to perform simple stuff.

- Q7. What can I do to go beyond solving problems?
  - Check the discussion tab. Even if your code passed all test cases, have a look through other’s solutions for the same problem. Understand what is happening under the hood and check for its impact on explain plans for each code. Start understanding the architecture and code interpretations of different SQL engines.

- Q8. Did you benefit from LeetCode as an experienced person in SQL?
  - Yes, It was a good collection of different types of problems. Even if you know most of the concepts, practice helps staying strong in the game. It helped recollect some of the way of solving that I had lost track of.

- Q9: Should I buy LeetCode premium for a year or go for the monthly plan?
  - Its clever that they have 3-4 months price same as yearly price. 3 months is precisely how long you will need to explore a topic on LeetCode. It is safer to go for the yearly plan if you have exams and quizzes in between. However, if you are very disciplined and think you can stick to a plan, then I suggest you go for a monthly plan. If you're a quick learner, you can devour an SQL introduction book and solve 'em all in 2 weeks. (Speaking of only database section here)

- Q10. How many did you solve in 12 hours?
  - I managed to attempt 57 easy, 20 medium, and 8 hard ones.

I screen-recorded my entire session. I then emailed LeetCode asking for their policy on posting it online. They mentioned that I cannot show their premium content on public websites. My solution codes are in the ‘scr’ folder (They are not the best solutions. I was rushing thorugh most of them). To look at the questions, you must pay LeetCode. 

# GG No Re :P

![SQL 12 hour](https://user-images.githubusercontent.com/77905159/111124220-465e8c00-853e-11eb-98ea-b3518a36b53a.png)
![Session SQL](https://user-images.githubusercontent.com/77905159/111124222-46f72280-853e-11eb-865f-6134f98c4481.jpeg)
