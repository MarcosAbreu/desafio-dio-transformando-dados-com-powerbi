
# Desafio DIO - Santander Bootcamp 2023 - Ciência de Dados com Python - Processando e Transformando Dados com Power BI

Código para certificação DIO Santander Bootcamp 2023 - Ciência de Dados com Python. Módulo: Processando e Transformando Dados com Power BI

## Desafio

Processar os dados com Power BI atendendo os seguintes tópicos:

1. Criação de uma instância na Azure para MySQL.

2. Criação do Banco de Dados.

3. Integração do Power BI com MySQL no Azure.

4. Verificação de problemas na base a fim de realizar a transformação dos dados.


## Diretrizes para transformação dos dados


1. Verificar os cabeçalhos e tipos de dados;

2. Modificar os valores monetários;

3. Verificar a existência dos nulos e analise de remoção;

4. Os employees com nulos em `Mssn` podem ser os gerentes; Verificar se há algum colaborador sem gerente;

5. Verificar se há algum departamento sem gerente;

6. Para departamentos sem gerente, as lacunas devem ser preenchidas;

7. Verificar o número de horas dos projetos;

8. Separar colunas complexas;

9. Mesclar consultas employee e departament para criar uma tabela employee com o nome dos departamentos associados aos colaboradores. A mescla terá como base a tabela employee;

10. Eliminar as colunas desnecessárias;

11. Realizar a junção dos colaboradores e respectivos nomes dos gerentes;

12. Mesclar as colunas de Nome e Sobrenome para ter apenas uma coluna definindo os nomes dos colaboradores;

13. Mesclar os nomes de departamentos e localização; 

14. Agrupar os dados a fim de saber quantos colaboradores existem por gerente;


## Ferramentas
* [Power BI](https://powerbi.microsoft.com)
* [Azure](https://portal.azure.com/#home)
* [MySQL Workbench](https://dev.mysql.com/doc/workbench/en/)
* [GitHub](https://github.com)

## Dataset

O dataset utilizado neste projeto foi baseado no modelo apresentado durante a formação e adaptado para atender os requisitos do desafio. O modelo adaptado para criação da base de dados e população de dados pode ser encontrado no repositório deste projeto, em `dataset/create-schema-and-tables.sql`, para criação e em `dataset/data-insetion.sql`, para população.


## Projeto

O projeto foi desenvolvido com base nas vídeo-aulas do desafio, sendo desenvolvidos análises que atendem as requisições do desafio. O arquivo do projeto esta localizado na raiz deste repositório, como `projeto.pbix`.

Abaixo estão screenshots dos dados tratados seguindo as diretrizes do desafio.

#### Mesclar Employee e Manager

![Screenshot Mesclar Employee e Manager](https://github.com/MarcosAbreu/desafio-dio-transformando-dados-com-powerbi/blob/main/screenshots/screenshot-mescla-employee-manager.PNG)

#### Mesclar Employee e Departamento

![Screenshot Mesclar Employee e Departamento](https://github.com/MarcosAbreu/desafio-dio-transformando-dados-com-powerbi/blob/main/screenshots/screenshot-mescla-employee-departament.PNG)

#### Mesclar Departamento e Localização

![Screenshot Mesclar Departamento e Localização](https://github.com/MarcosAbreu/desafio-dio-transformando-dados-com-powerbi/blob/main/screenshots/screenshot-mescla-departament-location.PNG)


#### Agrupar Employes Por Manager

![Screenshot Agrupar Employes Por Manager](https://github.com/MarcosAbreu/desafio-dio-transformando-dados-com-powerbi/blob/main/screenshots/screenshot-agrupar-employees-por-manager.PNG)


## Exemplo da Utilização dos Dados Transformados

![Screenshot Exemplo da Utilização dos Dados Transformados](https://github.com/MarcosAbreu/desafio-dio-transformando-dados-com-powerbi/blob/main/screenshots/screenshot-exemplo-resultado.PNG)

## Pergunta e Resposta

*Pergunta: Por que podemos apenas utilizar o mesclar e não o acrescentar nos casos abordados neste desafio?*

Resposta: 

   
```
O acrescentar não é o ideal quando o objetivo é unir dados diferentes, pois para cada dado diferente gerara novas linhas e colunas com dados inconsistentes de valor NULL.
O merge tem melhor funcionamento neste caso, pois como os dados tem relacionamento é possível fazer um link entres os identificadores de cada tabela e gerar novas tabelas com as informações desejadas.
```

<br>
