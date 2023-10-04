Feature: Post pet on regres
  Scenario: Post a pet
    Given url "https://petstore3.swagger.io" + "/api/v3/pet"
    And request {"id": 10,"name": "Doggie","category": {"id": 1,"name": "Dogs"},"photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    When method post
    Then status 200

