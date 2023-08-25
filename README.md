### DESAFIO RNP TESTE DE DADOS

1- Download dos arquivos de banco no site:  [Uibakery-sql-playground](https://uibakery.io/sql-playground)<br /><br />
2- Usando DBeaver fiz a conexão com o site Uibakery e extrai os dados das tabelas.
> No software mencionado acima foi gerado arquivos CSV com os dados,<br /> tambem foi gerado um arquivo SQL disponivel no diretorio chamado: ***ecommerce_tables.sql***
<br />
3- Usando a Ferramenta erwin foi gerado 2 arquivos:<br />
<blockquote>TB_DIAGRAM.erd e TB_DIAGRAM.png <br /> São os Diagrams simples da base de dados.</blockquote>

Image do Diagrama das tabelas: <br /><br />
![Screenshot](TB_DIAGRAM.png)<br />

4- Criação do notebook no [Databricks Community](https://community.cloud.databricks.com/) <br />
para este case utilizei a versão gratuita da ferramenta. e Nele foi criado um cluster e um notebook para criação da logica <br />
das tabelas mencionadas no modelo acima em parquet na plataforma.<br />

Nesta Etapa foi criado de acordo com o Briefing do arquivo enviado pela RNP o seguinte notebook: <br />
***Obs: o nome do notebook se refere as etapas descritas no arquivo "DESAFIO_RNP-TESTE.PDF"***
<blockquote>Caminho: \usr\notebooks\3-Criando e Salvando tabelas como Parque.ipynb</blockquote>
<br />

Image previa do arquivo direto da Plataforma DataBricks Community: <br /><br />
![Screenshot](1-NotebookCriado_na_ferramenta.png)<br />

Apos esta etapa segui para a proxima de realizar a criação das tabelas, banco de dados, e merge, insert, update, delete no ambiente Databricks <br/>
<br/>
5 - Nesta Etapa foi criado o banco de dados "ecommerce_rnp_teste", e as tabelas do arquivo "ecommerce_tables.sql"<br/>
usei os arquivos Parquet para gerar as tabelas no DB "ecommerce_rnp_teste".

<blockquote>Caminho: \usr\notebooks\4- Criando Banco e subindo os arquivos Parquet.ipynb</blockquote>
<br />

Image previa do arquivo 2 direto da Plataforma DataBricks Community: <br /><br />
![Screenshot](2-NotebookCriando_banco_m_u_i_d.png)<br />





