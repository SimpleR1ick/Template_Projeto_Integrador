# TRABALHO DE PI: Título do Trabalho

Trabalho desenvolvido durante a disciplina de Banco de Dados do Integrado

# Sumário

### 1. COMPONENTES <br>

#### Integrantes do grupo: <br>

- Henrique Dalmagro: henriquedalmagro04@gmail.com
- Maria Eduarda de Souza Barros: maria123duarda@gmail.com
- Rafael Barros Leão Borges: rafaelbleaob@gmail.com

### 2. MINIMUNDO <br>

> O sistema proposto para "Manual do Calouro" conterá as informações aqui detalhadas. Dos usuários serão armazenados o nome, o login e a senha. <br>O usuário também poderá ser: padrão, servidor ou professor. <br>Cada usuário poderá ou não fazer parte de uma turma. Do servidor será armazenado o horário de funcionamento, e do professor será armazenado suas regras de sala. Além disso, os servidores e professores possuem várias formas de contato e suas respectivas salas. <br>As aulas serão compostas por: turma, dia da semana, horário de início e fim, disciplina e sala. <br>Para o calendário, que será o mesmo que o calendário acadêmico, cada usuário poderá armazenar anotações de eventos, que terão a data e a descrição. <br>Serão armazenados também os horários das aulas semanais de cada turma, com suas respectivas aulas. <br>O ROD será dividido e armazenado em parágrafos com temas, de forma que facilite a pesquisa. Haverá também uma forma simplificada de cada parágrafo.

### 3. PMC<br>
![PMC](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Project%20Model%20Canvas.png?raw=true 'PMC')

### 4. PERSONAS E HISTÓRIAS DE USUÁRIO<br>

a) inclusão dos Persons desenvolvidos pelo grupo<br>
<img src="https://neilpatel.com/wp-content/uploads/2019/07/exemplo-carlos.png" Personas src="https://neilpatel.com/wp-content/uploads/2019/07/exemplo-carlos.png" width="500" height="500" /> <br>

<br>

b) inclusão das Histórias de usuário desenvolvidas pelo grupo <br>
<img src="https://miro.medium.com/max/1400/1*r5GVnOvqpMdxnGUYNRXqbg.png" UserStory src="https://miro.medium.com/max/1400/1*r5GVnOvqpMdxnGUYNRXqbg.png" width="500" height="300" /> <br>
<br>

### 5. RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

Neste ponto a codificação não e necessária, somente as ideias de telas devem ser desenvolvidas. O princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas e/ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discproint/template_projeto_integrador/blob/main/arquivos/balsamiq.png?raw=true 'Title')
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom](https://github.com/discproint/template_projeto_integrador/blob/main/arquivos/EmpresaDevcom.pdf?raw=true 'Empresa Devcom')

#### 5.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes?
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!

> A Empresa DevCom precisa inicialmente dos seguintes relatórios:

- Relatório que informe quais são os gerentes de cada departamento incluindo as seguintes informações: número do departamento, nome do departamento, e nome do gerente.
- Relatório de empregados por projeto incluindo as seguintes informações: número do projeto, nome do projeto, rg do empregado, nome do empregado e quantidade de horas de trabalho do empregado alocadas ao projeto.
- Relatório de empregados com dependentes incluindo as seguintes informações: rg do empregado, nome do empregado, nome do dependente, tipo de relação, data de nascimento do dependente e sexo do dependente.
- Relatório com a quantidade de empregados por cada departamento incluindo as seguintes informações: nome do departamento, supervisor e quantidade de empregados alocados no departamento.
- Relatório de supervisores e supervisionados incluindo as seguintes informações: nome do supervisor e nome do supervisionado.

### 6. TABELA DE DADOS DO SISTEMA:

    A) Esta tabela deve conter **todos os atributos do sistema** e um mínimo de 10 linhas/registros de dados.
    B) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados

<br> (veja o exemplo abaixo antes de criar a tabela para seu trabalho)
C) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho

![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discproint/template_projeto_integrador/blob/main/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true 'Tabela - Empresa Devcom')

### 7. MODELO CONCEITUAL<br>

    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 4.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento

<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)  
 C) Principais fluxos de informação/entidades do sistema (mínimo 2). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados
D) Qualidade e Clareza
Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null,
e tuplas falsas (Aplicar os conceitos de normalização abordados).

![Alt text](https://github.com/discproint/template_projeto_integrador/blob/main/arquivos/concept_sample.png?raw=true 'Modelo Conceitual')

#### 7.1 Descrição dos dados

    [objeto]: [descrição do objeto]

    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>

### 8. RASTREABILIDADE DOS ARTEFATOS<br>

        a) Historia de usuários vs protótipo (mockup)
        b) Protótipo vs Modelo conceitual
        (não serão aceitos modelos que não estejam em conformidade)
        c) Backlog (caso solicitado)

### 9. MODELO LÓGICO<br>

        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual
        (não serão aceitos modelos que não estejam em conformidade)

### 10. MODELO FÍSICO<br>

        a) inclusão das instruções de criacão das estruturas em SQL/DDL
        (criação de tabelas, alterações, etc..)

### 11. INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados

<br> + insert para dados a serem inseridos)
b) Criar um novo banco de dados para testar a restauracao
(em caso de falha na restauração o grupo não pontuará neste quesito)
c) formato .SQL

### 12. TABELAS E PRINCIPAIS CONSULTAS<br>

    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>

#### 12.1 CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

#### 12.2 PRINCIPAIS CONSULTAS DO SISTEMA

Inserir as principais consultas (relativas aos 5 principais relatórios) definidas previamente no iten 3.1 deste template.
<br>
a) Você deve apresentar as consultas em formato SQL para cad um dos relatórios.
<br>
b) Além da consulta deve ser apresentada uma imagem com o resultado obtido para cada consulta.<br>

#### 12.3 ANTEPROJETO VERSÃO 1

Link para [Modelo de Anteprojeto](https://docs.google.com/document/d/1oeVS2CUffbSNYWxIWZFY_mX6E5ao_PHU/edit?usp=sharing&ouid=104104747195236161434&rtpof=true&sd=true)

 <br>
 <br>
 
 
 
 
 ### 13. Gráficos, relatórios, integração com Linguagem de programação e outras solicitações.<br>
     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>
 #### 13.1	Integração com Linguagem de programação; <br>
 #### 13.2	Desenvolvimento de gráficos/relatórios pertinentes, juntamente com demais <br>
 #### solicitações feitas pelo professor. <br>
 #### 13.3 ANTEPROJETO VERSÃO 2
 <br>
 <br>
 
 
 ### 14. Slides e Apresentação em vídeo. <br>
     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>
 #### 14.1 Slides; <br>
 #### 14.2 Apresentação em vídeo <br>
 #### 14.3 ANTEPROJETO VERSÃO FINAL
 <br>
 <br>

##### About Formatting

    https://help.github.com/articles/about-writing-and-formatting-on-github/

##### Basic Formatting in Git

    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests

##### Working with advanced formatting

    https://help.github.com/articles/working-with-advanced-formatting/

#### Mastering Markdown

    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.

1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.

Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>

Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true 'Title')
