CREATE DATABASE product_funnel_analysis;

CREATE TABLE ecommerce_events (
event_time DATETIME,
event_type VARCHAR(20),
product_id BIGINT,
category_code VARCHAR(100),
brand VARCHAR(100),
price FLOAT,
user_id BIGINT,
user_session VARCHAR(100)
);

CREATE TABLE funnel_metrics (
stage VARCHAR(20),
users INT
);

CREATE TABLE revenue_metrics (
category_code VARCHAR(255),
price FLOAT
);

CREATE TABLE time_metrics (
hour INT,
event_count INT
);

CREATE TABLE category_metrics (
category_code VARCHAR(255),
view INT,
cart INT,
purchase INT
);