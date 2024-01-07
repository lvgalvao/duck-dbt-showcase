CREATE OR REPLACE TABLE raw_listings
                    (id integer,
                     listing_url string,
                     name string,
                     room_type string,
                     minimum_nights integer,
                     host_id integer,
                     price string,
                     created_at date,
                     updated_at date);

INSTALL httpfs;
LOAD httpfs;

INSERT INTO raw_listings (id,
                   listing_url,
                   name,
                   room_type,
                   minimum_nights,
                   host_id,
                   price,
                   created_at,
                   updated_at)
SELECT * FROM read_csv('s3://dbtlearn/listings.csv', AUTO_DETECT=TRUE);

SELECT * FROM raw_listings;