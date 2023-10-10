Feature: Logar 

  Scenario: login com sucesso
    Given o usuário está na pagina de login
    When o usuário preenche  e-mail e senha corretos
    And clica no botão de login
    Then o sistema exibe uma mensagem de sucesso.
 
  Scenario: Recuperar acesso
    Given o usuário está na pagina de login
    When o usuário seleciona a opção Esqueceu Senha
    And informa o e-mail cadadstrado
    And clica no botão 'Enviar as instruções para alterar a senha'
    Then o sistema exibe uma mensagem de envio de e-mail de recuperação com sucesso
  
  Scenario: Tentativa de Login sem dados
    Given o usuário está na pagina de login
    When o usuário não preenche e-mail e senha
    And clica no botão de login
    Then o sistema exibe uma mensagem de erro.
  
  Scenario: Tentativa de Login com dados invalidos
    Given o usuário está na pagina de login
    When o usuário preenche e-mail invalido senha invalida
    And clica no botão de login
    Then o sistema exibe uma mensagem de erro.
  

 
  
