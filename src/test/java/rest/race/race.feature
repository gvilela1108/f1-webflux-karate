Feature: Corridas F1 - Teste Endpoints
Background:
  * url urlBase

@race
Scenario: Validar o response da Corrida
  Given path '/races/resultBySeasonAndRound'
  And param season = 2017
  And param round = 3
  When method GET
  Then status 200

@race
Scenario: Validar o json de resposta da Corrida
  Given path '/races/resultBySeasonAndRound'
  And param season = 2017
  And param round = 3
  When method GET
  Then status 200
  * def json = read('raceResponse.json')
  And match response == json