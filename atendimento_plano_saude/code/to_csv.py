import pandas as pd
import sqlite3
import os

NOME_ARQUIVO_DB = 'ajustes.db'             
NOME_TABELA = 'consultas_2'                 
NOME_ARQUIVO_CSV = 'consultas_2.csv'
# ------------------------------------------

if not os.path.exists(NOME_ARQUIVO_DB):
    print(f"Erro: Arquivo de banco de dados '{NOME_ARQUIVO_DB}' não encontrado. Verifique o caminho.")
else:
    try:
        conn = sqlite3.connect(NOME_ARQUIVO_DB)

        query = f"SELECT * FROM {NOME_TABELA}"

        print(f"Lendo dados da tabela '{NOME_TABELA}'...")
        df = pd.read_sql_query(query, conn)

        conn.close()


        df.to_csv(NOME_ARQUIVO_CSV, index=False, sep=';', encoding='utf-8')

        print("-" * 50)
        print(f"SUCESSO! Dados exportados para: {NOME_ARQUIVO_CSV}")
        print(f"Total de linhas exportadas: {len(df)}")
        print("-" * 50)

    except pd.io.sql.DatabaseError as e:
        print(f"Erro ao ler o banco de dados: {e}")
        print(f"Certifique-se de que a tabela '{NOME_TABELA}' existe em '{NOME_ARQUIVO_DB}'.")
    except Exception as e:
        print(f"Ocorreu um erro inesperado: {e}")