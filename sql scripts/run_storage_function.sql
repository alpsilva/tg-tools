-- Creating unidade_storage_size table
CREATE TABLE unidade_storage_size(
    unidade INT,
    comment VARCHAR,
    total_size NUMERIC,
    total_size_in_mb TEXT
);

-- Defining record_storage_size function
CREATE OR REPLACE FUNCTION record_storage_size(
    unidade INT,
    comment VARCHAR
)
RETURNS VOID AS
$$
DECLARE
    unidade_size NUMERIC;
    unidade_size_in_mb TEXT;
BEGIN
    -- Calculate size in bytes
        IF (comment = 'optimized') THEN
            SELECT (
                PG_RELATION_SIZE('movimentos_' || unidade) + 
                PG_RELATION_SIZE('processos_' || unidade) +
                PG_RELATION_SIZE('mat_view_fluxograma_' || unidade) +
                PG_RELATION_SIZE('mat_view_corregodoria_' || unidade))
            INTO unidade_size;
        ELSE
            SELECT (
                PG_RELATION_SIZE('movimentos_' || unidade) + 
                PG_RELATION_SIZE('processos_' || unidade))
            INTO unidade_size;
        END IF;
    
    -- Size in MegaBytes
    SELECT
    PG_SIZE_PRETTY(unidade_size)
    INTO unidade_size_in_mb;
    
    INSERT INTO unidade_storage_size (
            unidade,
            comment,
            total_size,
            total_size_in_mb)
    VALUES (
            unidade,
            comment,
            unidade_size,
            unidade_size_in_mb);	
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