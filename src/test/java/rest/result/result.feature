Feature: Resultados F1 - Teste Endpoints
  Background:
    * url urlBase

  @result
  Scenario: Validar o response do envio do Kafka
    Given path '/results/sendResultsKafka'
    When method GET
    Then status 200
    And match response.[0].[0].season == 2017

