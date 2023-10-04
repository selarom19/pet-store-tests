Feature: Delete pet id on regres
  Scenario: Delete pet id
    Given url "https://petstore3.swagger.io" + "/api/v3/pet/1"
    When method delete
    Then status 200