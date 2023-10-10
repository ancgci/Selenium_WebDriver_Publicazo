Feature: Cadastrar Usuário
Scenario: Tentativa de cardastro com senhas divergentes
    Given o usuário está na pagina de cadastro 4
    When o usuário preenche senha e confirmação de senha divergentes
    When o usuário clica no botão cadastrar 4
    Then o sistema exibe uma mensagem de erro 4
