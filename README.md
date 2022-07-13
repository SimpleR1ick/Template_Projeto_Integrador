# TRABALHO DE PI: Manual do Calouro

Trabalho desenvolvido durante as disciplinas de Projeto Intedrador e Desenvolvimento de Sistemas do Integrado

# Sumário

### 1. COMPONENTES <br>

#### Integrantes do grupo: <br>

- Henrique Dalmagro: henriquedalmagro04@gmail.com
- Maria Eduarda de Souza Barros: maria123duarda@gmail.com
- Rafael Barros Leão Borges: rafaelbleaob@gmail.com


### 2. MINIMUNDO <br>

> O sistema do "Manual do Calouro" pretende auxiliar os alunos do técnico integrado do IFES Serra, em especial os ingressantes, reunindo informações necessárias para o cotidiano em um só lugar e permitindo acesso rápido e fácil a elas. <br>
> O sistema proposto para "Manual do Calouro" conterá as informações aqui detalhadas. Dos **USUARIO** serão armazenados o **nome, o login e a senha**. O **USUARIO** também poderá ser: **padrão, servidor ou professor**. <br>**_Cada usuário poderá ou não fazer parte de uma turma_**. Do **SERVIDOR** será armazenado o **horário de funcionamento**, e do **PROFESSOR** será armazenado suas **regras de sala**. Além disso, os **SERVIDORES** e **PROFESSORES** possuem várias **formas de contato e suas respectivas salas**. <br>As **AULAS** serão compostas por: **turma, dia da semana, horário de início e fim, disciplina e sala**. <br>Para o calendário, que será o mesmo que o calendário acadêmico, cada usuário poderá armazenar anotações de **EVENTOS**, que terão a **data e a descrição**. <br>Serão armazenados também os **HORARIO** das aulas semanais de cada **TURMA**, com suas respectivas **AULAS**. <br>O **ROD** será dividido e armazenado em parágrafos com temas, de forma que facilite a pesquisa. Haverá também uma forma simplificada de cada parágrafo.


### 3. PMC <br>

![PMC](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Project%20Model%20Canvas.png) <br>
[PMC](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Project%20Model%20Canvas.png?raw=true)


### 4. PERSONAS E HISTÓRIAS DE USUÁRIO <br>

a) Personas <br>

![Persona 3](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Personas/3.png) <br>
[PDF das Personas](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Personas/Personas.pdf?raw=true) <br>

<br>

b) Histórias de usuário desenvolvidas pelo grupo <br>

### Persona 1: Aluno Veterano

1. Eu, Maria Eduarda, quero mais facilidade em encontrar o telefone de um determinado departamento para encontrar quem resolve meu problema.
2. Eu, Maria Eduarda, quero mais facilidade em acessar meu horário de aulas para acompanhar minha rotina naquele dia.
3. Eu, Maria Eduarda, quero um calendário mais flexível para não precisar baixar outro arquivo quando há alguma mudança.
4. Eu, Maria Eduarda, quero um calendário interativo para fazer anotações sobre mudanças nos dias.
5. Eu, Maria Eduarda, quero acesso mais fácil e rápido ao ROD para poder lutar por meus direitos.
6. Eu, Maria Eduarda, quero um local com as regras de sala de cada professor para não precisar ficar lembrando das preferências individuais deles
7. Eu, Maria Eduarda, quero saber todos os horários de atendimento dos professores para tirar dúvidas com eles.
8. Eu, Maria Eduarda, quero saber os horários de atendimento dos departamentos para saber quando posso ir e resolver meus problemas.

[PDF das Histórias de Usuário](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Hist%C3%B3rias%20de%20Usu%C3%A1rio%20.pdf?raw=true)

<br>


### 5. RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS) <br>

![Imagem do Protótipo](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Manual%20do%20Calouro%20-%20Prototipo%201.png) <br>

[Protótipo Manual do Calouro](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Manual%20do%20Calouro%20-%20Prototipo%201.pdf?raw=true) <br>

#### 5.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?

> O Manual do Calouro poderá fornecer:

- Relatório que informe quais são os usuários, incluindo as seguintes informações: nível de acesso, nome do usuário, e seu email.
- Relatório das salas usadas por cada turma, professor e servidor.
- Relatório dos contatos dos servidores, e seus horários de atendimento e os contatos dos professores e suas regras de sala.
- Relatório de quais turmas mais utilizam o Manual do Calouro e as funcionalidades mais acessadas.
- Relatório da porcentagem e número absoluto de alunos, servidores e professores que usam o Manual do Calouro.


### 6. TABELA DE DADOS DO SISTEMA:

![Imagem da Tabela de Dados](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Manual%20do%20Calouro%20Planilha.png) <br>
[Tabela de Dados do Manual do Calouro](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Manual%20do%20Calouro%20Planilha.pdf?raw=true) <br>


### 7. MODELO CONCEITUAL <br>

#### Principais Entidades: <br>

- Usuario
- Turma
- Aula

#### Pricipais Fluxos de Informação:

- Usuario x Evento
- Aula

![Imagem Modelo Conceitual](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Manual%20do%20Calouro.png) <br>
[Modelo Conceitual](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Manual%20do%20Calouro.png?raw=true) <br>

#### 7.1 Descrição dos dados

> **USUARIO:** Tabela que armazena as informações relativas aos usuários do sistema.<br>**id_user:** campo que armazena o número de identificação única do usuário.<br>**nome:** campo que armazena o nome do usuário.<br>**email:** campo que armazena o e-mail utilizado para login do usuário.<br>**senha:** campo que armazena a senha criptografada para login do usuário.<br>**ativo:** campo que armazena o número que indica se a conta do usuário está ativa ou inativa.<br>**acesso:** campo que armazena o número que indica o nível de acesso permitido ao usuário.<br>**img_perfil:** campo que armazena o caminho da imagem de perfil do usuário.<br><br>**SERVIDOR:** Tabela que herda de Usuario e armazena as informações relativas aos usuários que são servidor público ou representante de um departamento no IFES Serra.<br>**horario_fim:** campo que armazena o horário em que o usuário-servidor inicia seu horário de atendimento.<br>**horario_inicio:** campo que armazena o horário em que o usuário-servidor finaliza seu horário de atendimento.<br><br>**PROFESSOR:** Tabela que herda de Usuario e Servidor e armazena as informações relativas aos usuários que são professores no IFES Serra.<br>**regras:** campo que armazena as regras de sala do usuário-professor.<br><br>**TURMA:** Tabela que armazena as informações relativas às turmas do ensino médio técnico no IFES Serra.<br>**id_turma:** campo que armazena o número de identificação única de uma turma.<br>**dsc_turma:** campo que armazena o nome da turma (ex: 3° ano Informática).<br><br>**HORARIO:** Tabela que armazena as informações relativas aos horários das aulas.<br>**id_horario:** campo que armazena o número de identificação única de cada par de horários.<br>**hora_fim:** campo que armazena o horário de início de uma determinada aula.<br>**hora_inicio:** campo que armazena o horário de término de uma determinada aula.<br><br>**DISCIPLINA:** Tabela que armazena as informações relativas às disciplinas ensinadas.<br>**id_disc:** campo que armazena o número de identificação única de uma disciplina.<br>**dsc_disc:** campo que armazena o nome da disciplina (ex: Projeto Integrador).<br><br>**SALA:** Tabela que armazena as informações relativas às salas no IFES Serra.<br>**id_sala:** campo que armazena o número de identificação única para cada sala no campus, sendo 0/1 + n° da sala (0 para térreo e 1 para superior).<br>**dsc_sala:** campo que armazena o tipo da sala (ex: laboratório de biologia).<br><br>**EVENTOS:** Tabela que armazena as informações relativas aos eventos no calendário.<br>**id_eventos:** campo que armazena o número de identificação única para cada evento salvo pelo usuário.<br>**dsc_evento:** campo que armazena a descrição/nome do evento marcado no calendário pelo usuário (ex: prova de recuperação de química).<br>**data_evento:** campo que armazena a data e horário em que o evento irá acontecer.<br><br>**TIPO_CONTATO:** Tabela que armazena as informações relativas aos tipos de contato que um usuário-servidor e usuário-professor podem ter.<br>**id_tipo:** campo que armazena o número de identificação único daquele tipo de contato.<br>**dsc_tipo:** campo que armazena o tipo de contato (ex: email).<br><br>**AULA:** Relacionamento que relaciona as informações relativas às aulas de cada turma, compostas por: dia da semana, horário, disciplina, professor, turma e sala.<br>**id_aula:** campo que armazena o número de identificação único de uma aula.<br><br>**TEM:** Relacionamento que relaciona as informações relativas ao contato de um usuário-servidor ou usuário-professor.<br>**id_contato:** campo que armazena o número de identificação único daquele contato.<br>**dsc_contato:** campo que armazena o conteúdo do contato (ex: prof.omena@gmail.com).

### 8. RASTREABILIDADE DOS ARTEFATOS <br>

a) Historia de usuários vs protótipo (mockup)<br>

![Imagem Rastreabilidade](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Rastreabilidade.png) <br>
[Rastreabilidade HU x Página](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Rastreabilidade%20HU%20x%20P%C3%A1ginas.pdf?raw=true) <br>

b) Protótipo vs Modelo conceitual (não serão aceitos modelos que não estejam em conformidade) <br>

![Imagem Rastreabilidade 2](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Rastreabilidade%20Modelo%20Conceitual%20x%20P%C3%A1ginas.png) <br>
[Rastreabilidade Modelo Conceitual x Páginas](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Rastreabilidade%20Modelo%20Conceitual%20x%20P%C3%A1ginas.pdf?raw=true) <br>

c) Backlog (caso solicitado)

### 9. MODELO LÓGICO <br>

a) inclusão do esquema lógico do banco de dados
![Imagem Modelo Lógico](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Manual%20do%20Calouro%20L%C3%B3gico.png) <br>
[Modelo Lógico](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Manual%20do%20Calouro%20L%C3%B3gico.brM3?raw=true) <br>
    
b) verificação de correspondencia com o modelo conceitual
(não serão aceitos modelos que não estejam em conformidade)

### 10. MODELO FÍSICO <br>

a) inclusão das instruções de criacão das estruturas em SQL/DDL
(criação de tabelas, alterações, etc..)
![Imagem Modelo Físico](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Imagem%20Modelo%20F%C3%ACsico.png) <br>
[Modelo Físico](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Manual%20do%20Calouro%20F%C3%ADsico%20(Postgresql).sql?raw=true) <br>

### 11. INSERT APLICADO NAS TABELAS DO BANCO DE DADOS <br>

![Inserts](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Inserts.png) <br>
[Inserts](https://github.com/TeKel416/Template_Projeto_Integrador/blob/main/arquivos/Inserts.sql?raw=true) <br>

### 12. TABELAS E PRINCIPAIS CONSULTAS <br>

    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>

#### 12.1 CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

#### 12.2 PRINCIPAIS CONSULTAS DO SISTEMA

Inserir as principais consultas (relativas aos 5 principais relatórios) definidas previamente no iten 3.1 deste template.
<br>
a) Você deve apresentar as consultas em formato SQL para cad um dos relatórios.
<br>
b) Além da consulta deve ser apresentada uma imagem com o resultado obtido para cada consulta.<br>

#### 12.3 ANTEPROJETO VERSÃO 1

Link para [Manual do Calouro Anteprojeto](https://docs.google.com/document/d/1DezPiPIVN5LJ1b7b43MoysOkwI-kdwyH/edit)

 <br>
 <br>

### 13. Gráficos, relatórios, integração com Linguagem de programação e outras solicitações.<br>

     OBS: Observe as instruções relacionadas a cada uma das atividades abaixo.<br>

#### 13.1 Integração com Linguagem de programação; <br>

#### 13.2 Desenvolvimento de gráficos/relatórios pertinentes, juntamente com demais <br>

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
