-- Original query
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
COALESCE(s."nomeServidor", 'N/I') AS "nomeServidor",
COALESCE(s."tipoServidor", 'N/I') AS "tipoServidor"
FROM test_processos_xxxx proc
JOIN classes c ON proc.classe = c.id
JOIN assuntos a ON proc.assunto = a.id
JOIN test_movimentos_xxxx mov ON proc."processoID" = mov."processoID"
LEFT OUTER JOIN servidores s ON mov."usuarioID" = s."servidorID"
LEFT OUTER JOIN cod_movimentos cm ON mov."movimentoID" = cm.id
JOIN (
    SELECT
    mov."processoID" AS "processoID",
    min(mov."dataInicio") AS earliest_date
    FROM test_movimentos_xxxx mov
    GROUP BY mov."processoID"
) AS anon_1 ON proc."processoID" = anon_1."processoID"
WHERE anon_1.earliest_date >= '1900-01-01'
ORDER BY proc."processoID", mov."dataFinal" ASC;

-- Creating index on dataPrimeiroMovimento
CREATE INDEX idx_dataPrimeiroMovimento
ON processos_xxxx("dataPrimeiroMovimento");


-- Creating materialized view
CREATE MATERIALIZED VIEW mat_view_corregedoria_xxxx AS
SELECT
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
mov."processoID",
proc."NPU",
proc.dataPrimeiroMovimento,
classes.descricao AS classe
FROM movimentos_xxxx mov
JOIN processos_xxxx proc ON mov."processoID" = proc."processoID"
JOIN classes ON proc.classe = classes.id
ORDER BY proc."processoID", mov."dataFinal" ASC

-- New corregedoria query
SELECT *
FROM mat_view_corregedoria_xxxx
WHERE dataPrimeiroMovimento >= '1900-01-01'