Feature: Buscar Serviços

Scenario: Busca simples de serviços
    Given o usuário está logado
    When o usuário clica no botão 'Pesquisar'
    Then sistema exibe a lista de serviços de acordo com a pesquisa

Scenario: Busca avançada de serviços
    Given o usuário está logado
    And clica no botão Pesquisar
    And clica em Mais filtros
    And seta o critério Ensino
    When o usuário clica no botão 'Pesquisar'
    Then sistema exibe a lista de serviços de acordo com a pesquisa
    