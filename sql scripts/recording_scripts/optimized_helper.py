unidades = [
    44508,
    8380,
    18104,
    17384,
    14013,
    3843,
    7433,
    14009,
    18228,
    13325,
    18007
]

for unidade in unidades:
    query = f"""
        -- Creating index on dataPrimeiroMovimento
        CREATE INDEX IF NOT EXISTS idx_dataPrimeiroMovimento
        ON processos_{unidade}("dataPrimeiroMovimento");

        -- Creating materialized view
        CREATE MATERIALIZED VIEW mat_view_corregedoria_{unidade} AS
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
        FROM movimentos_{unidade} mov
        JOIN processos_{unidade} proc ON mov."processoID" = proc."processoID"
        JOIN classes ON proc.classe = classes.id
        ORDER BY proc."processoID", mov."dataFinal" ASC;

        SELECT record_execution_time(10, {unidade}, \'corregedoria\', \'optimized\', \'
            SELECT *
            FROM mat_view_corregedoria_{unidade} mat_view
            WHERE mat_view."dataPrimeiroMovimento" >= \'\'1900-01-01\'\'
        \');
    """
    print(query)
    print("")