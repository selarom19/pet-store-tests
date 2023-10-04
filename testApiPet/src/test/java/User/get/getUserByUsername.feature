Feature: Get user on regres
  Scenario: Get a user by username
    Given url "https://petstore3.swagger.io" + "/api/v3/user/theUser"
    When  method get
    Then status 200
    And match $ == { "id": 10,"username": "theUser","firstName": "John","lastName": "James","email": "john@email.com","password": "12345","phone": "12345","userStatus": 1}

  Scenario: Get a user invalid
    Given url "https://petstore3.swagger.io" + "/api/v3/user/theUser2"
    When  method get
    Then status 500