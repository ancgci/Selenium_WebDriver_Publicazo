Feature: Cadastrar Usuário

  Scenario: Cardastro com sucesso
    Given o usuário está na pagina de cadastro 1
    When o usuário preenche  o Nome, e-mail, senha e confirmação de senha.
    When clica no botão de cadastrar 1
    Then o sistema exibe uma mensagem de sucesso.
