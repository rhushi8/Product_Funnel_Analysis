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

LOAD DATA INFILE 'ecommerce_sample.csv'
INTO TABLE ecommerce_events
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;