CREATE OR REPLACE TABLE raw_hosts
                    (id integer,
                     name string,
                     is_superhost string,
                     created_at date,
                     updated_at date);

INSTALL httpfs;
LOAD httpfs;                     
                    
INSERT INTO raw_hosts (id, name, is_superhost, created_at, updated_at)
                   SELECT * FROM read_csv('s3://dbtlearn/hosts.csv', AUTO_DETECT=TRUE);

SELECT * FROM raw_hosts;