Feature: Put user on regres
  Scenario: Put user
    Given url "https://petstore3.swagger.io" + "/api/v3/user/theUser"
    And request {"id": 10,"username": "theUser","firstName": "John","lastName": "James","email": "john@email.com","password": "12345","phone": "12345","userStatus": 1}
    When  method put
    Then status 200
    #And match $.username == 'theUser'