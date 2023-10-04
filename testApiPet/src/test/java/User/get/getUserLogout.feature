Feature: Get user on regres
  Scenario: Get a user logout
    Given url "https://petstore3.swagger.io" + "/api/v3/user/logout"
    When  method get
    Then status 200