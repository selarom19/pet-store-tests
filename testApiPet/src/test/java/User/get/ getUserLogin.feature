Feature: Get user on regres
  Scenario: Get a user login
    Given url "https://petstore3.swagger.io" + "/api/v3/user/login?username=theUser&password=12345"
    When  method get
    Then status 200