select *
from data_analyst_jobs;

select count(title)
from data_analyst_jobs;

select *
from data_analyst_jobs
limit 10;

select *
from data_analyst_jobs
where location = 'TN' OR location = 'KY';

select *
from data_analyst_jobs
where star_rating >= 4;

select *
from data_analyst_jobs
where review_count BETWEEN 500 AND 1000;

select location as state, avg(star_rating) as avg_rating
from data_analyst_jobs
group by location;

select count(distinct title)
from data_analyst_jobs;

select count(distinct title)
from data_analyst_jobs
where location = 'CA';

select distinct company, star_rating, review_count
from data_analyst_jobs
where review_count >= 5000
order by star_rating;

select title
from data_analyst_jobs
where title ilike '%Analyst%';

select title
from data_analyst_jobs
where title not like '%ANALYST%' and title not like '%Analyst%' and title not like '%Analytics%'
and title not like '%analyst%' and title not like '%ANALYTICS%' and title not like '%analytics%';

select domain, count(title) as hard_to_fill
from data_analyst_jobs
where skill is not null and domain is not null and skill ilike '%SQL%' and days_since_posting >= 21
group by domain
order by hard_to_fill desc