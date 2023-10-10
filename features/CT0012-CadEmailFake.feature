Feature: Cadastrar Usuário
Scenario: Tentativa de cardastro com e-mail invalido
    Given o usuário está na pagina de cadastro 3
    When o usuário preenche o Nome certo, e-mail inválido, senha e confirmação de senha
    When clica no botão de cadastrar 3
    Then o sistema exibe uma mensagem de erro e não sai da tela de cadastro