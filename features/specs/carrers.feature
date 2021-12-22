#language: pt

Funcionalidade: create a filter with the dropdown options
  As a new employee
  Access the beon home page
  So I can do a research with the available filters

  @beon_carrers
  Esquema do Cenário: beon_carrers
    Dado que eu esteja na página home
    Quando clico no botão join us
    E filtro as vagas
      | Tech     | <Tech>     |
      | Business | <Business> |
      | Role     | <Role>     |
    Entao valido as opções apresentadas

    Exemplos:
      | Tech    | Business          | Role                       |
      | Ruby    | E-commerce        | QA Automation              |
      | Android | Fintech           | DevOps                     |
      | PHP     | SaaS              | QA Manual                  |
      | Ruby    | Computer Software | Engineering - Semi Sr & Sr |
