SELECT record_execution_time(5, 'original_corregedoria_44508', '''
SELECT
proc."NPU",
proc."processoID",
classes.descricao AS classe,
assuntos.descricao AS assunto,
anon_1.earliest_date,
mov.activity,
mov."dataInicio",
mov."dataFinal",
mov."usuarioID",
mov.duration,
coalesce(mov."movimentoID", -1) AS "movimentoID",
coalesce(servidores."nomeServidor", ''NAO INFORMADO'') AS "nomeServidor",
coalesce(servidores."tipoServidor", ''NAO INFORMADO'') AS "tipoServidor"
FROM test_processos_44508 proc
JOIN classes ON proc.classe = classes.id
JOIN assuntos ON proc.assunto = assuntos.id
JOIN (
    SELECT
    mov."processoID" AS "processoID",
    min(mov."dataInicio") AS earliest_date
    FROM test_movimentos_44508 mov
    GROUP BY mov."processoID"
) AS anon_1 ON proc."processoID" = anon_1."processoID"
JOIN test_movimentos_44508 mov
ON proc."processoID" = mov."processoID"
LEFT OUTER JOIN servidores
ON mov."usuarioID" = servidores."servidorID"
LEFT OUTER JOIN cod_movimentos
ON mov."movimentoID" = cod_movimentos.id
WHERE anon_1.earliest_date >= ''1900-01-01''
ORDER BY proc."processoID", mov."dataFinal" ASC	
''');