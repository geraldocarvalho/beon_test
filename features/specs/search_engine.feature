#language: pt

Funcionalidade: create a filter with the dropdown options
  As a new employee
  Access the beon home page
  So I can do a research with the available filters

  @search_engine
    @google_search
    Cenário: google search
      Dado que eu esteja na página inicial
      Quando realizo uma busca
      E acesso a pagina de respostas
      Entao valido a pesquisa realizada

    @search_results
    Cenário: acessing search results
      Dado que eu esteja na página inicial
      Quando realizo uma busca
      E acesso a pagina de respostas
      E acesso o terceiro link da pagina de respostas
      Entao valido o acesso ao novo site
