Feature: Cadastrar Usuário

  Scenario: Tentativa de cardastro sem preenchimento de dados
    Given o usuário está na pagina de cadastro 2
    When o usuário não preenche o Nome, e-mail, senha e confirmação de senha
    When clica no botão de cadastrar 2
    Then o sistema exibe uma mensagem de erro