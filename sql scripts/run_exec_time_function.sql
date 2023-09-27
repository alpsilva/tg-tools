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

-- Recording original fluxograma run times
SELECT record_execution_time(100, 44508, 'fluxograma', 'original', ''' ''');
SELECT record_execution_time(100, 8380, 'fluxograma', 'original', ''' ''');
SELECT record_execution_time(100, 18104, 'fluxograma', 'original', ''' ''');
SELECT record_execution_time(100, 17384, 'fluxograma', 'original', ''' ''');
SELECT record_execution_time(100, 14013, 'fluxograma', 'original', ''' ''');
SELECT record_execution_time(100, 3843, 'fluxograma', 'original', ''' ''');
SELECT record_execution_time(100, 7433, 'fluxograma', 'original', ''' ''');
SELECT record_execution_time(100, 14009, 'fluxograma', 'original', ''' ''');
SELECT record_execution_time(100, 18228, 'fluxograma', 'original', ''' ''');
SELECT record_execution_time(100, 13325, 'fluxograma', 'original', ''' ''');
SELECT record_execution_time(100, 18007, 'fluxograma', 'original', ''' ''');

-- Recording optimized fluxograma run times
SELECT record_execution_time(100, 44508, 'fluxograma', 'optimized', ''' ''');
SELECT record_execution_time(100, 8380, 'fluxograma', 'optimized', ''' ''');
SELECT record_execution_time(100, 18104, 'fluxograma', 'optimized', ''' ''');
SELECT record_execution_time(100, 17384, 'fluxograma', 'optimized', ''' ''');
SELECT record_execution_time(100, 14013, 'fluxograma', 'optimized', ''' ''');
SELECT record_execution_time(100, 3843, 'fluxograma', 'optimized', ''' ''');
SELECT record_execution_time(100, 7433, 'fluxograma', 'optimized', ''' ''');
SELECT record_execution_time(100, 14009, 'fluxograma', 'optimized', ''' ''');
SELECT record_execution_time(100, 18228, 'fluxograma', 'optimized', ''' ''');
SELECT record_execution_time(100, 13325, 'fluxograma', 'optimized', ''' ''');
SELECT record_execution_time(100, 18007, 'fluxograma', 'optimized', ''' ''');

-- Recording original corregedoria run times
SELECT record_execution_time(100, 44508, 'corregedoria', 'original', ''' ''');
SELECT record_execution_time(100, 8380, 'corregedoria', 'original', ''' ''');
SELECT record_execution_time(100, 18104, 'corregedoria', 'original', ''' ''');
SELECT record_execution_time(100, 17384, 'corregedoria', 'original', ''' ''');
SELECT record_execution_time(100, 14013, 'corregedoria', 'original', ''' ''');
SELECT record_execution_time(100, 3843, 'corregedoria', 'original', ''' ''');
SELECT record_execution_time(100, 7433, 'corregedoria', 'original', ''' ''');
SELECT record_execution_time(100, 14009, 'corregedoria', 'original', ''' ''');
SELECT record_execution_time(100, 18228, 'corregedoria', 'original', ''' ''');
SELECT record_execution_time(100, 13325, 'corregedoria', 'original', ''' ''');
SELECT record_execution_time(100, 18007, 'corregedoria', 'original', ''' ''');

-- Recording optimized corregedoria run times
SELECT record_execution_time(100, 44508, 'corregedoria', 'optimized', ''' ''');
SELECT record_execution_time(100, 8380, 'corregedoria', 'optimized', ''' ''');
SELECT record_execution_time(100, 18104, 'corregedoria', 'optimized', ''' ''');
SELECT record_execution_time(100, 17384, 'corregedoria', 'optimized', ''' ''');
SELECT record_execution_time(100, 14013, 'corregedoria', 'optimized', ''' ''');
SELECT record_execution_time(100, 3843, 'corregedoria', 'optimized', ''' ''');
SELECT record_execution_time(100, 7433, 'corregedoria', 'optimized', ''' ''');
SELECT record_execution_time(100, 14009, 'corregedoria', 'optimized', ''' ''');
SELECT record_execution_time(100, 18228, 'corregedoria', 'optimized', ''' ''');
SELECT record_execution_time(100, 13325, 'corregedoria', 'optimized', ''' ''');
SELECT record_execution_time(100, 18007, 'corregedoria', 'optimized', ''' ''');