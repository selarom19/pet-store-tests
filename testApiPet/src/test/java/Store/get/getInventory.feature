Feature: Get store inventory on regres
  Scenario: Get store inventory
    Given url "https://petstore3.swagger.io" + "/api/v3/store/inventory"
    When  method get
    Then status 200