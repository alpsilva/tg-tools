
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