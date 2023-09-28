-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_44508("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_44508 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_44508 mov
JOIN processos_44508 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 44508, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_44508 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_8380("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_8380 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_8380 mov
JOIN processos_8380 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 8380, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_8380 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_18104("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_18104 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_18104 mov
JOIN processos_18104 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 18104, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_18104 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_17384("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_17384 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_17384 mov
JOIN processos_17384 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 17384, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_17384 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_14013("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_14013 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_14013 mov
JOIN processos_14013 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 14013, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_14013 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_3843("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_3843 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_3843 mov
JOIN processos_3843 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 3843, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_3843 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_7433("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_7433 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_7433 mov
JOIN processos_7433 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 7433, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_7433 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_14009("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_14009 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_14009 mov
JOIN processos_14009 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 14009, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_14009 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_18228("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_18228 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_18228 mov
JOIN processos_18228 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 18228, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_18228 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_13325("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_13325 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_13325 mov
JOIN processos_13325 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 13325, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_13325 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_18007("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_18007 AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc."dataPrimeiroMovimento",
classes.descricao AS classe
FROM movimentos_18007 mov
JOIN processos_18007 proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 18007, 'corregedoria', 'optimized', '
    SELECT *
    FROM mat_view_corregedoria_18007 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');

SELECT * FROM query_execution_times;