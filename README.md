# Portifólio Power BI 📊

Este projeto contém projetos de dashboards em Power BI que fiz para análise e apresentação de dados de empresas reais. Cada projeto contém bases diferentes e tratamentos variados, fazendo uso de SQL, Python, Excel ou Google Sheets.

Palavras-chave: Power BI; dashboard; SQL; Excel; Google Sheets; Python; análise

- [Dashboard Monthly Sales](\sales_report)
- [Dashboard Vendas de Grãos](\vendas_de_graos)
- [Dashboard Vendas Transacionais](\vendas_transacionais)

### Dashboard Monthly Sales
![Gif que exemplifica o funcionando do Dashboard Monthly Sales](https://i.imgur.com/QSv0IFE.gif)
### Dashboard Vendas de Grãos
![Gif que exemplifica o funcionando do Dashboard Vendas de Grãos](https://i.imgur.com/Zo2V9Qf.gif)
### Dashboard Vendas Transacionais
![Gif que exemplifica o funcionando do Dashboard Vendas Transacionais](https://i.imgur.com/Hgf3dI4.gif)
<br><br>
## Plataformas e ferramentas usadas

- **Power BI**: Usado como editor de dashboard.
- **VSCode**: Usado para escrever notebooks de Python.
- **Jupyter**: Extensão usada no VSCode para desenvolvimento de notebooks de Python.
- **Google Colab**: Usado para escrever notebooks de Python.
- **Excel**: Usado para leitura inicial de tabelas.
- **Google Sheets**: Usado para leitura inicial de tabelas.


## Arquivos do projeto

1. README.md - Arquivo de texto que documenta o projeto
<br><br>
    **Monthly Sales**
1. [Base de dados 2013-2014](monthly_sales/data/processed/Base_de_dados_2013_2014.csv) - Base de vendas de dos anos de 2013 e 2014 em formato de tabela
1. [Base de dados 2015-2016](monthly_sales/data/processed/Base_de_dados_2015_2016.csv) - Base de vendas de dos anos de 2013 e 2014 em formato de tabela
1. [Base de dados 2013-2014](monthly_sales/data/processed/Base_de_dados_2013_2014.csv) - Base de vendas de dos anos de 2013 e 2014 em formato csv
1. [Base de dados 2015-2016](monthly_sales/data/processed/Base_de_dados_2015_2016.csv) - Base de vendas de dos anos de 2013 e 2014 em formato csv
1. [Normatização de Dados](monthly_sales/notebooks/normatizacao_dados.ipynb) - Notebook de Python para normatização das bases do projeto
1. [Print da dashboard](monthly_sales/monthly_sales_print.jpg) - Print em PDF da dashboard do projeto
1. [GIF da dashboard](monthly_sales/monthly_sales_gif.gif) - GIF da dashboard do projeto demonstrando suas interações
1. [Monthly Sales](monthly_sales/monthly_sales.pbix) - Dashboard produzida ao final do projeto
<br> <br>
    **Venda de Grãos**
1. [Base clientes](vendas_de_graos\data\raw\clientes.csv) - Base de clientes em formato csv
1. [Base compras](vendas_de_graos\data\raw\compras.csv) - Base de compras em formato csv
1. [Print da dashboard](vendas_de_graos\vendas_de_graos_print.pdf) - Print em PDF da dashboard do projeto
1. [GIF da dashboard](vendas_de_graos\vendas_de_graos_gif.gif) - GIF da dashboard do projeto demonstrando suas interações
1. [Venda de Grãos](vendas_de_graos\vendas_de_graos.pbix) - Dashboard produzida ao final do projeto
<br> <br>
    **Vendas Transacionais**
1. [Base de metas](vendas_transacionais\data\raw\metas.xlsx) - Base de metas em formato de tabela
1. [Base de resultados](vendas_transacionais\data\raw\resultados.xlsx) - Base de resultados em formato de tabela
1. [Base de vendedores](vendas_transacionais\data\raw\vendedores.xlsx) - Base de vendedores em formato de tabela
1. [Base de vendedores limpa](vendas_transacionais\data\processed\vendedores_limpa.xlsx) - Base de metas após limpezas iniciais em formato de tabela
1. [Resultado da Etapa 1 - Metas de vendas](vendas_transacionais\data\processed\etapa_1_metas_vendas.xlsx) - Tabela resultante da Etapa 1, vincula as bases de metas e vendedores
1. [Resultado da Etapa 2 - Metas x Resultados](vendas_transacionais\data\processed\etapa_2_metas_resultados.xlsx) - Tabela resultante da Etapa 2, vincula o resultado da Etapa 1 com a base de resultados
1. [Resultado da Etapa 4 - Orçamento do próximo período](vendas_transacionais\data\processed\etapa_4_orcamento_novembro.xlsx) - Tabela resultante da Etapa 4 (não há tabela resultante da Etapa 3), registra o orçado para o próximo período
1. [Notebook Metas de vendas](vendas_transacionais/notebooks/etapa_1_metas_vendas.ipynb) - Notebook de Python para tratamento das bases de metas e vendedores e desenvolvimento da Etapa 1
1. [Notebook Metas x Resultados](vendas_transacionais/notebooks/etapa_2_metas_resultados.ipynb) - Notebook de Python para tratamento da base de resultados e desenvolvimento da Etapa 2
1. [Etapas do projeto](vendas_transacionais/vendas_transacionais_etapas.pdf) - Explicação das etapas do projeto em PDF
1. [Print da dashboard](vendas_transacionais/vendas_transacionais_print.pdf) - Print em PDF da dashboard do projeto
1. [GIF da dashboard](vendas_transacionais/vendas_transacionais_gif.gif) - GIF da dashboard do projeto demonstrando suas interações
1. [Vendas Transacionais](vendas_transacionais/vendas_transacionais.pbix) - Dashboard produzida ao final do projeto
<br> <br>


### Estrutura do projeto
```
Portifólio Power BI/
│
├── sales_report/
│   ├── data/                                       # Pasta de dados
│   │   └── processed/                              # Pasta de dados processados
│   │
│   ├── notebooks/                                  # Pasta de notebooks python
│   │
│   ├── monthly_sales_print.pdf                     # Print em PDF da dashboard
│   ├── monthly_sales_gif.jpg                       # GIF da dashboard
│   └── monthly_sales.pbix                          # Dashboard do projeto
│
├── sales_report/
│   ├── data/                                       # Pasta de dados
│   │   └── raw/                                    # Pasta de dados brutos, como foram obtidos
│   │
│   ├── vendas_de_graos_print.pdf                   # Print em PDF da dashboard
│   ├── vendas_de_graos_gif.jpg                     # GIF da dashboard
│   └── vendas_de_graos.pbix                        # Dashboard do projeto
│
├── vendas_transacionais/
│   ├── data/                                       # Pasta de dados
│   │   ├── processed/                              # Pasta de dados processados
│   │   └── raw/                                    # Pasta de dados brutos, como foram obtidos
│   │
│   ├──notebooks/                                   # Pasta de notebooks python
│   │
│   ├── vendas_transacionais_etapas.pdf             # Print em PDF da dashboard
│   ├── vendas_transacionais_print.pdf              # Print em PDF da dashboard
│   ├── vendas_transacionais_gif.jpg                # GIF da dashboard
│   └── vendas_transacionais.pbix                   # Dashboard do projeto
│
└── README.md                                       # Arquivo de documentação principal
```