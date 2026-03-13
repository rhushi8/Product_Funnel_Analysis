SELECT 
stage,
users
FROM funnel_metrics
ORDER BY users DESC;

SELECT 
stage,
users,
users / LAG(users) OVER(ORDER BY users DESC) AS conversion_rate
FROM funnel_metrics;

SELECT
category_code,
SUM(price) AS revenue
FROM revenue_metrics
GROUP BY category_code
ORDER BY revenue DESC
LIMIT 10;

SELECT
hour,
event_count
FROM time_metrics
ORDER BY event_count DESC;

SELECT
category_code,
purchase
FROM category_metrics
ORDER BY purchase DESC
LIMIT 10;

SELECT
category_code,
cart / view AS view_to_cart_rate
FROM category_metrics
ORDER BY view_to_cart_rate DESC;

SELECT
category_code,
purchase / cart AS cart_to_purchase_rate
FROM category_metrics
WHERE cart > 0
ORDER BY cart_to_purchase_rate DESC;

SELECT
category_code,
view,
cart,
purchase,
(view - purchase) AS drop_off
FROM category_metrics
ORDER BY drop_off DESC
LIMIT 10;



WITH category_funnel AS (
    SELECT
        category_code,
        view,
        cart,
        purchase
    FROM category_metrics
)

SELECT
    category_code,
    view,
    cart,
    purchase,
    cart / view AS view_to_cart_rate,
    purchase / cart AS cart_to_purchase_rate
FROM category_funnel
WHERE cart > 0
ORDER BY purchase DESC;