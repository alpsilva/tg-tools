-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_44508("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_44508 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_44508 mov
JOIN test_processos_44508 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 44508, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_44508 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_8380("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_8380 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_8380 mov
JOIN test_processos_8380 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 8380, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_8380 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_18104("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_18104 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_18104 mov
JOIN test_processos_18104 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 18104, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_18104 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_17384("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_17384 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_17384 mov
JOIN test_processos_17384 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 17384, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_17384 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_14013("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_14013 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_14013 mov
JOIN test_processos_14013 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 14013, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_14013 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_3843("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_3843 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_3843 mov
JOIN test_processos_3843 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 3843, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_3843 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_7433("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_7433 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_7433 mov
JOIN test_processos_7433 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 7433, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_7433 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_14009("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_14009 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_14009 mov
JOIN test_processos_14009 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 14009, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_14009 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_18228("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_18228 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_18228 mov
JOIN test_processos_18228 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 18228, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_18228 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_13325("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_13325 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_13325 mov
JOIN test_processos_13325 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 13325, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_13325 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');



-- Creating index on dataPrimeiroMovimento
CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
ON processos_18007("dataPrimeiroMovimento");

-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_fluxograma_18007 AS
SELECT
proc."NPU",
proc."processoID",
proc."dataPrimeiroMovimento",
c."descricao" AS "classe",
a."descricao" AS "assunto",
mov."activity",
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov."duration",
COALESCE(mov."movimentoID", -1) AS "movimentoID",
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_movimentos_18007 mov
JOIN test_processos_18007 proc ON mov."processoID" = proc."processoID"
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
ORDER BY proc."processoID", mov."dataFinal" ASC;

SELECT record_execution_time(10, 18007, 'fluxograma', 'optimized', '
    SELECT *
    FROM mat_view_fluxograma_18007 mat_view
    WHERE mat_view."dataPrimeiroMovimento" >= ''1900-01-01''
');