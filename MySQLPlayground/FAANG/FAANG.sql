USE FAANG;

# In this section we are going to explore Interview Questions that were used in some FAANG companies 
# and similar companies like them.
# They might seem a bit steeper than the questions we had before and some of the Queries might be a bit complicated, 
# this is normal as the following companies are highly competitive.
# FAANG is an acronym for five big tech giants namely: Facebook, Amazon , Apple, Netflix and Alphabet (which owns Google).


# 1. Given a table of Facebook posts, for each user who posted at least twice in 2021,
# write a query to find the number of days between each users' first post of the year
# and the last post for the year 2021.
# Output the user and the number of the days between each user's first and last post.
SELECT user_id, MAX(DAY(post_date)) - MIN(DAY(post_date)) AS days_between
FROM facebook_post
WHERE YEAR(post_date) = 2021 
GROUP BY user_id
HAVING COUNT(post_id)>1;


# 2. Assume you have an events table on app analytics. 
# Write a querty to get the click-through rate percentage (CTR%) per app in 2022.
# Outoupo the results in percentage rounded to 2 decimal places.
SELECT app_id, CONCAT(ROUND(100.0 * sum(CASE
	WHEN event_type = 'click' THEN 1 ELSE 0 END) / COUNT(event_type),2)," %") AS ctr
FROM facebook_event
WHERE timestamp >= '2022-01-01' AND timestamp < '2023-01-01'
GROUP BY app_id;


# 3. Given the reviews table, write a query to get the average stars for each product every month.
# The output should include the month, product_id and average star rating.
# - Round the average star rating to two decimal places,
# - Sort the output based on month and product_id
SELECT month, product_id, ROUND(AVG(stars), 2) AS avg_stars
FROM (
	SELECT MONTH(submit_date) AS month, product_id, stars
    FROM amazon_reviews) AS rev_star
GROUP BY month, product_id
ORDER BY month, product_id;


# 4. Assume you are given the table of twitter history containing tweet data.
# Write a query to obtain a histogram of tweets posted per user in 2022.
# Output the tweet count per user as the bucket,
# and then the number of Twitter users who fall into that bucket
SELECT tweets_num as tweet_bucket, COUNT(user_id) AS users_num
FROM (
	SELECT user_id, COUNT(tweet_id) AS tweets_num
    FROM twitter_history
    WHERE tweet_date BETWEEN '2022-01-01' AND '2022-12-31'
    GROUP BY user_id) AS totel_tweets
GROUP BY tweets_num;


# 5. Assume you are given the table below that shows job postings for all companies on the LinkedIn platform.
# Write a query to get the number of companies that have posted duplicate job listings 
# (two jobs at the same company with the same title and description)
WITH jobs_grouped AS (
	SELECT company_id, title, description, COUNT(job_id) AS job_count
    FROM linkedIn_dupe
    GROUP BY company_id, title, description)

SELECT COUNT(DISTINCT company_id) AS duplicate_companies
FROM jobs_grouped
WHERE job_count>1;


# 6. Given a table of candidates and their skills, 
# you're tasked with finding the candidates best suiter for an open Data Science job.
# You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.
# Write a SQL query to list the candidates who prosses all of the required skills for the job.
# Sort the output by candidate ID in ascending order.
SELECT candidate_id
FROM linkedIN_cadidates
WHERE skill in ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id;


# 7. New TikTok users sign up with their emails, so each signup requires a text confirmation to activate the new user's account.
# Write a SQL query to find the confirmation rate of people who confirmed their sugnups with text messages.
# Round the result to 2 decimal places.
# We assume that
#  - A user may fail to confirm many times with text.
# 	Once signup is confirmed for a user, they will not be able to initiate the same process again.
# - A user may not initiate the signup confirmation process at all.
SELECT ROUND(CAST(SUM(signup) AS DECIMAL(6,2)) / COUNT(USER_ID), 2)
  AS confirm_rate
FROM (
SELECT user_id,
  CASE
    WHEN tiktok_text.email_id IS NOT NULL THEN 1
    ELSE 0
  END AS signup
FROM tiktok_mail
LEFT JOIN tiktok_text
  ON tiktok_mail.email_id = tiktok_text.email_id
  AND signup_action = 'Confirmed'
)
AS rate;


# 8. New TikTok users sign up with their emails, and each user receives a text confirmation to activate their account.
# Assume you are given related tables about emails and text.
# Write a SQL query to display ids of the users who did not confirm on the first day of sign up,
# but confirmed on the second day.
# We assume that
#  - action_date is the date when user activated and confirmed their sign up through the text.
SELECT DISTINCT user_id
FROM (
  SELECT 
    tiktok_mail2.user_id, tiktok_mail2.signup_date, tiktok_text2.action_date
  FROM tiktok_mail2
  JOIN tiktok_text2 ON tiktok_mail2.email_id = tiktok_text2.email_id
  WHERE tiktok_text2.signup_action = 'Confirmed'
) AS second_day
WHERE action_date = signup_date + INTERVAL 1 DAY;


# 9. Google marketing managers are analyzint the performane of various advertising accounts over the last month.
# They need your help to gather the relevant data.
# Write a query to calculate the return on ad psend (ROAS) for each advertiser accross all ad campaigns.
# Round your answer to 2 decimal places, and order your output by the advertiser_id. 
# Hint: ROAS = Ad Revenue / Ad Spend.
SELECT advertiser_id,
    ROUND(SUM(revenue) / CAST(SUM(spend) AS DECIMAL), 2) AS ROAS
FROM google_ad
GROUP BY advertiser_id
ORDER BY advertiser_id;


# 10. In consulting, being "on the bench" means you have a gap between two clients engagements.
# Google wants to know how many days of bench time each consultant had in 2021.
# Assume that each consultant is only staffed to one consulting engagement at a time.
# Write a query to pull each emplyee ID and their total bench time in days during 2021.
# We assume that:
# - All listed employees are current employees who were hired before 2021.
# - The engamements in the consulting_engamement table are completed for the year 2022.
WITH consulting_days AS (
	SELECT 
	  google_staff.employee_id,
	  SUM(google_consulting.end_date - google_consulting.start_date) AS non_bench_days,
	  COUNT(google_staff.employee_id) AS inclusive_days
	FROM google_staff 
	JOIN google_consulting ON google_staff.job_id = google_consulting.job_id
	WHERE google_staff.is_consultant = 'true'
	GROUP BY google_staff.employee_id
)
SELECT
  employee_id,
  365 - SUM(non_bench_days) - SUM(inclusive_days) AS bench_days
FROM consulting_days
GROUP BY employee_id;