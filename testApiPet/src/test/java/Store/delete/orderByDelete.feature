Feature: Delete orderBy on regres
  Scenario: Delete order by < 1000
    Given url "https://petstore3.swagger.io" + "/api/v3/store/order/1"
    When method delete
    Then status 200

  Scenario: Delete order by > 1000
    Given url "https://petstore3.swagger.io" + "/api/v3/store/order/2000"
    When method delete
    Then status 400