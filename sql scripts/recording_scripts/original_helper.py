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
        SELECT record_execution_time(10, {unidade}, \'fluxograma\', \'original\', \'
            SELECT
            proc.\"NPU\",
            proc.\"processoID\",
            anon_1.earliest_date,
            c.\"descricao\" AS \"classe\",
            a.\"descricao\" AS \"assunto\",
            mov.\"activity\",
            mov.\"dataInicio\",
            mov.\"dataFinal\",
            mov.\"usuarioID\",
            mov.\"duration\",
            COALESCE(mov.\"movimentoID\", -1) AS \"movimentoID\",
            COALESCE(s.\"nomeServidor\", \'\'N/I\'\') AS \"nomeServidor\",
            COALESCE(s.\"tipoServidor\", \'\'N/I\'\') AS \"tipoServidor\"
            FROM test_processos_{unidade} proc
            JOIN classes c ON proc.classe = c.id
            JOIN assuntos a ON proc.assunto = a.id
            JOIN test_movimentos_{unidade} mov ON proc.\"processoID\" = mov.\"processoID\"
            LEFT OUTER JOIN servidores s ON mov.\"usuarioID\" = s.\"servidorID\"
            LEFT OUTER JOIN cod_movimentos cm ON mov.\"movimentoID\" = cm.id
            JOIN (
                SELECT
                mov.\"processoID\" AS \"processoID\",
                min(mov.\"dataInicio\") AS earliest_date
                FROM test_movimentos_{unidade} mov
                GROUP BY mov.\"processoID\"
            ) AS anon_1 ON proc.\"processoID\" = anon_1.\"processoID\"
            WHERE anon_1.earliest_date >= \'\'1900-01-01\'\'
            ORDER BY proc.\"processoID\", mov.\"dataFinal\" ASC;
        \');
    """
    print(query)
    print("")