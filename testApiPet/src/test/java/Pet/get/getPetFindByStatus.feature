Feature: Get pet on regres
  Scenario: Get a pet find by status
    Given url "https://petstore3.swagger.io" + "/api/v3/pet/findByStatus"
    And param status = "available"
    When  method get
    Then status 200
    #And match $ == [{"id": 10,"name": "doggie","category":{"id": 1,"name": "Dogs"},"photoUrls":  ["string"],"tags":[{"id": 0,"name": "string"}],"status": "available"}]

  Scenario: Get a pet find by status invalid
    Given url "https://petstore3.swagger.io" + "/api/v3/pet/findByStatus"
    And param status = "solder"
    When  method get
    Then status 400