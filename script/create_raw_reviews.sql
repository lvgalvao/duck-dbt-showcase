CREATE OR REPLACE TABLE raw_reviews
                    (listing_id integer,
                     date timestamp,
                     reviewer_name string,
                     comments string,
                     sentiment string);
                     

INSTALL httpfs;
LOAD httpfs;

INSERT INTO raw_reviews (listing_id, date, reviewer_name, comments, sentiment)
SELECT * FROM read_csv_auto('s3://dbtlearn/reviews.csv');

SELECT * FROM raw_reviews;
