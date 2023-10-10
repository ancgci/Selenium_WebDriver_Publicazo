Feature: Reservar/Contratar um Serviço 

  Scenario: Reservar/Contratar um serviço com sucesso
    Given o usuário está logado
    And clica no botão Pesquisar 
    And seleciona serviço Cabelo
    When o usuário seleciona data de entrada e saida
    And clica no botão de Reservar Agora 
    Then o sistema exibe uma mensagem Reserva Realizada com Sucesso

  Scenario: Confirmar reserva realizada com sucesso
    Given o usuário está logado
    When o usuário seleciona o menu superior direito
    And clica em Serviços Contratados
    Then o sistema exibe a tela os serviços Contratados