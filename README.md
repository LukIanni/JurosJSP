# Projeto de Cálculo de Juros

Este projeto web, desenvolvido em JSP, oferece duas calculadoras financeiras distintas: uma para juros simples e outra para juros compostos. A navegação entre as páginas é facilitada por um menu dinâmico construído com JSP Fragments (.jspf).

## Estrutura do Projeto

O projeto é composto pelos seguintes arquivos:

* **`index.jsp`**: Página inicial do projeto. Contém a identificação do desenvolvedor e o menu de navegação para as calculadoras.
* **`juros-simples.jsp`**: Formulário para entrada dos dados (montante, taxa de juros em %, e quantidade de meses) e apresentação do valor futuro calculado utilizando a fórmula de juros simples.
* **`juros-compostos.jsp`**: Formulário para entrada dos dados (montante, taxa de juros em %, e quantidade de meses) e apresentação de uma tabela detalhada mostrando o valor futuro acumulado a cada período (mês) durante o prazo informado, utilizando a fórmula de juros compostos.
* **`menu.jspf`**: Fragmento JSP que contém a estrutura do menu de navegação, sendo incluído nas páginas `index.jsp`, `juros-simples.jsp`, e `juros-compostos.jsp`.

## Funcionalidades

* **Página Inicial (`index.jsp`):**
    * Apresenta uma identificação básica do desenvolvedor do projeto.
    * Exibe um menu de links para as páginas de cálculo de juros simples e juros compostos.

* **Cálculo de Juros Simples (`juros-simples.jsp`):**
    * Permite ao usuário inserir o valor do montante inicial investido.
    * Permite ao usuário inserir a taxa de juros desejada (em porcentagem).
    * Permite ao usuário inserir a quantidade de meses para o cálculo.
    * Ao submeter o formulário, a página calcula e apresenta o valor futuro do montante utilizando a fórmula do juros simples.

* **Cálculo de Juros Compostos (`juros-compostos.jsp`):**
    * Permite ao usuário inserir o valor do montante inicial investido.
    * Permite ao usuário inserir a taxa de juros desejada (em porcentagem ao mês).
    * Permite ao usuário inserir a quantidade de meses para o cálculo.
    * Ao submeter o formulário, a página calcula e exibe uma tabela. Cada linha da tabela representa um mês, mostrando o valor futuro acumulado até aquele período, considerando a capitalização dos juros.

* **Menu de Navegação (`menu.jspf`):**
    * Um fragmento JSP reutilizável que contém os links de navegação para as diferentes páginas do projeto.
    * Este menu é incluído em todas as páginas para garantir uma navegação consistente.

## Como Executar

1.  **Implante o projeto em um servidor web compatível com JSP** (como Apache Tomcat ou GlassFish).
2.  **Acesse a página inicial** do projeto através do seu navegador web (geralmente no endereço `http://localhost:8080/<nome_do_contexto_da_aplicacao>/`).
3.  **Utilize o menu de navegação** na página inicial para acessar as calculadoras de juros simples e juros compostos.
4.  **Preencha os formulários** nas respectivas páginas com os valores desejados e clique no botão de cálculo para visualizar os resultados.

## Considerações de Desenvolvimento

* O menu de navegação foi implementado
