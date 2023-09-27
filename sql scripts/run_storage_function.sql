-- Creating unidade_storage_size table
CREATE TABLE unidade_storage_size(
    unidade INT,
    comment VARCHAR,
    total_size NUMERIC,
    total_size_in_mb TEXT
);

-- Defining function
CREATE OR REPLACE FUNCTION record_execution_time(
    num_executions INT,
    unidade INT,
    modulo TEXT,
    comment TEXT,
    query_text TEXT
) RETURNS VOID AS
$$
DECLARE
    l_start_time TIMESTAMP;
    l_end_time TIMESTAMP;
    l_execution_time INTERVAL;
BEGIN
    FOR counter IN 1..num_executions LOOP
        -- Start the timer
        l_start_time := clock_timestamp();
    
        -- Execute the query
        EXECUTE query_text;
    
        -- Stop the timer
        l_end_time := clock_timestamp();
    
        -- Calculate the execution time
        l_execution_time := l_end_time - l_start_time;
    
        -- Insert the execution time into the table
        INSERT INTO query_execution_times (
                unidade, modulo, comment,
                query_execution_time)
        VALUES (unidade, modulo, comment, l_execution_time);
    END LOOP;
END;
$$
LANGUAGE plpgsql;

-- Recording original storage size
SELECT record_storage_size(44508, 'original');
SELECT record_storage_size(8380, 'original');
SELECT record_storage_size(18104, 'original');
SELECT record_storage_size(17384, 'original');
SELECT record_storage_size(14013, 'original');
SELECT record_storage_size(3843, 'original');
SELECT record_storage_size(7433, 'original');
SELECT record_storage_size(14009, 'original');
SELECT record_storage_size(18228, 'original');
SELECT record_storage_size(13325, 'original');
SELECT record_storage_size(18007, 'original');

-- Recording optimized storage size
SELECT record_storage_size(44508, 'optimized');
SELECT record_storage_size(8380, 'optimized');
SELECT record_storage_size(18104, 'optimized');
SELECT record_storage_size(17384, 'optimized');
SELECT record_storage_size(14013, 'optimized');
SELECT record_storage_size(3843, 'optimized');
SELECT record_storage_size(7433, 'optimized');
SELECT record_storage_size(14009, 'optimized');
SELECT record_storage_size(18228, 'optimized');
SELECT record_storage_size(13325, 'optimized');
SELECT record_storage_size(18007, 'optimized');