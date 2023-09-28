-- Creating query_execution_times table
CREATE TABLE query_execution_times (
    unidade INT,
    modulo TEXT,
    comment TEXT,
    query_execution_time INTERVAL
);

-- Defining record_execution_time function
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

SELECT unidade, ROUND(EXTRACT(second FROM avg(query_execution_time)), 3)
FROM query_execution_times
WHERE modulo = 'fluxograma'
AND comment = 'original'
GROUP BY unidade;