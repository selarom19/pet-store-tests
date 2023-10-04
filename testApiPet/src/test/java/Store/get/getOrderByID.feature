Feature: Get store inventory on regres
  Scenario: Get order by ID <=5
    Given url "https://petstore3.swagger.io" + "/api/v3/store/orderId=1"
    When  method get
    Then status 200
    And match $ == {"id": 10,"petId": 198772,"quantity": 7,"shipDate": "2023-10-03T20:10:14.551Z","status": "approved","complete": true}


  Scenario: Get order by ID >10
    Given url "https://petstore3.swagger.io" + "/api/v3/store/orderId=11"
    When  method get
    Then status 200
    And match $ == {"id": 10,"petId": 198772,"quantity": 7,"shipDate": "2023-10-03T20:10:14.551Z","status": "approved","complete": true}

  Scenario: Get order by failed
    Given url "https://petstore3.swagger.io" + "/api/v3/store/orderId=7"
    When  method get
    Then status 404
