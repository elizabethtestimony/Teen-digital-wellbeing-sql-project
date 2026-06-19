Group social media platform usage and their numbers.
SELECT platform_usage,
COUNT(*) AS total_users
FROM "Teen Mental Health"
GROUP BY platform_usage
ORDER BY total_users DESC;

Average daily social media hours by gender
SELECT gender,
ROUND(AVG(daily_social_media_hours),2) AS avg_social_media_hours
FROM "Teen Mental Health"
GROUP BY gender;