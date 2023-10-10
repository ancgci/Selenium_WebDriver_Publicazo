Feature: Sair do Sistema

Scenario: Sair do Sistema
    Given o usuário está logado
    When o usuário acessa o Menu Lateral
    And seleciona a opção Sair
    Then o sistema exibe a mensagem Saiu com sucesso.