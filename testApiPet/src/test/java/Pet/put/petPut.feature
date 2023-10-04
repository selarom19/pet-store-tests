Feature: Put pet on regres
  Scenario: Put a Update an existing pet by Id
    * def jsonResponse = read('../jason/listPet.json')
    Given url "https://petstore3.swagger.io" + "/api/v3/pet/"
    And request {"id": 10,"name": "dog","category": {"id": 1,"name": "Dogs"},"photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    When method put
    Then status 200

  Scenario: Put a Update pet not found
    * def jsonResponse = read('../jason/listPet.json')
    Given url "https://petstore3.swagger.io" + "/api/v3/pet"
    And request {"id":9,"name": "dog","category": {"id":1,"name": "Dogs"},"photoUrls": ["string"],"tags": [{"id": 0,"name": "string"}],"status": "available"}
    When method put
    Then status 404

