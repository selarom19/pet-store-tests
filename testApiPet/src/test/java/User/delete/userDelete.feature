Feature: Delete user on regres
  Scenario: Delete a user
    Given url "https://petstore3.swagger.io" + "/api/v3/user/username=oreo"
    When  method delete
    Then status 404