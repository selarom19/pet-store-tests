Feature: Post order on regres
  Scenario: Post a order
    Given url "https://petstore3.swagger.io" + "/api/v3/store/order"
    And request {"id": 10,"petId": 198772,"quantity": 7,"shipDate": "2023-10-03T18:55:38.221Z","status": "approved","complete": true}
    When method post
    Then status 200

    Scenario: Invalid input order
    Given url "https://petstore3.swagger.io" + "/api/v3/store/order"
    And request {"id":dog,"petId":rock,"quantity": 7,"shipDate": "2023-10-03T18:55:38.221Z","status": "approved","complete": true}
      When method post
    Then status 400