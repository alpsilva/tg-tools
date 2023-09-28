-- Recording original fluxograma run times
SELECT record_execution_time(10, 44508, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_44508 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_44508 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_44508 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');



SELECT record_execution_time(10, 8380, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_8380 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_8380 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_8380 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');



SELECT record_execution_time(10, 18104, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_18104 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_18104 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_18104 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');



SELECT record_execution_time(10, 17384, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_17384 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_17384 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_17384 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');



SELECT record_execution_time(10, 14013, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_14013 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_14013 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_14013 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');



SELECT record_execution_time(10, 3843, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_3843 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_3843 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_3843 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');



SELECT record_execution_time(10, 7433, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_7433 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_7433 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_7433 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');



SELECT record_execution_time(10, 14009, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_14009 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_14009 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_14009 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');



SELECT record_execution_time(10, 18228, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_18228 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_18228 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_18228 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');



SELECT record_execution_time(10, 13325, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_13325 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_13325 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_13325 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');



SELECT record_execution_time(10, 18007, 'fluxograma', 'original', '
    SELECT
    proc."NPU",
    proc."processoID",
    anon_1.earliest_date,
    c."descricao" AS "classe",
    a."descricao" AS "assunto",
    mov."activity",
    mov."dataInicio",
    mov."dataFinal",
    mov."usuarioID",
    mov."duration",
    COALESCE(mov."movimentoID", -1) AS "movimentoID",
    COALESCE(s."nomeServidor", ''N/I'') AS "nomeServidor",
    COALESCE(s."tipoServidor", ''N/I'') AS "tipoServidor"
    FROM test_processos_18007 proc
    JOIN classes c ON proc.classe = c.id
    JOIN assuntos a ON proc.assunto = a.id
    JOIN test_movimentos_18007 mov ON proc."processoID" = mov."processoID"
    LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
    LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
    JOIN (
        SELECT
        mov."processoID" AS "processoID",
        min(mov."dataInicio") AS earliest_date
        FROM test_movimentos_18007 mov
        GROUP BY mov."processoID"
    ) AS anon_1 ON proc."processoID" = anon_1."processoID"
    WHERE anon_1.earliest_date >= ''1900-01-01''
    ORDER BY proc."processoID", mov."dataFinal" ASC;
');

SELECT * FROM query_execution_times;