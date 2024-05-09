-- Create a stream with raw data
CREATE STREAM raw_data (
    before STRUCT<id INT, value STRING>,
    after STRUCT<id INT, value STRING>,
    source STRUCT<version STRING, connector STRING, name STRING, ts_ms BIGINT, snapshot STRING, db STRING, sequence ARRAY<STRING>, schema STRING, table STRING, txId INT, lsn BIGINT, xmin INT>,
    op STRING,
    ts_ms BIGINT,
    transaction STRUCT<id STRING, total_order BIGINT, data_collection_order BIGINT>
)
WITH (KAFKA_TOPIC='dbserver1..public.data', VALUE_FORMAT='JSON');


-- Create a new stream with transformed data
CREATE STREAM transformed_data AS
SELECT after->id AS id,
       UCASE(after->value) AS value
FROM raw_data
WHERE after IS NOT NULL
EMIT CHANGES;




-- Basic Commands
-- Once inside the CLI, you can use various commands to interact with your data and ksqlDB server:

SHOW STREAMS;
-- Lists all streams available in your ksqlDB server.
SHOW TABLES;
-- Lists all tables.
SHOW QUERIES;
-- Lists all ongoing queries.
SHOW TOPICS;
-- Lists all Kafka topics in the cluster that the ksqlDB server can access.
CREATE STREAM and CREATE TABLE
-- These commands allow you to define streams and tables based on Kafka topics.
INSERT INTO
-- Used to insert data into a stream or table.
SELECT
-- Used to query data from streams and tables in real-time.




