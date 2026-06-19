--Average daily social media hours by gender
SELECT gender,
ROUND(AVG(daily_social_media_hours),2) AS avg_social_media_hours
FROM "Teen Mental Health"
GROUP BY gender;

--Social Media platform usage
SELECT platform_usage,
COUNT(*) AS total_users
FROM "Teen Mental Health"
GROUP BY platform_usage
ORDER BY total_users DESC;

-- Relationship between sleep quality and mental health risk
SELECT sleep_quality,
ROUND(AVG(mental_health_risk_score),2) AS avg_mental_health_risk_score
FROM "Teen Mental Health"
GROUP BY sleep_quality
ORDER BY mental_health_risk_score DESC;

-- Percentage distribution by digital wellbeing category
SELECT digital_wellbeing_flag,
COUNT(*) AS total_users,
ROUND(COUNT(*) * 100.0 /(SELECT COUNT(*) FROM "Teen Mental Health"),2) AS percentage
FROM "Teen Mental Health"
GROUP BY digital_wellbeing_flag
ORDER BY percentage DESC;

-- Academic performance across addiction level
SELECT addiction_level,
ROUND(AVG(academic_performance),2) AS avg_academic_performance
FROM "Teen Mental Health"
GROUP BY addiction_level
ORDER BY addiction_level;
