Feature: Get pet on regres
  Scenario: Get a pet find by tag
    Given url "https://petstore3.swagger.io" + "/api/v3/pet/findByTags"
    And param tags = ["tag1","tag2"]
    When  method get
    Then status 200
    #And match response == [{"id": 10,"name": "doggie","category":{"id": 1,"name": "Dogs"},"photoUrls": ["string"],"tags":[{"id": 0,"name": "string"}],"status": "available"}]

  Scenario: Get a pet find by tag invalid
    Given url "https://petstore3.swagger.io" + "/api/v3/pet/findByTags"
    And param tags = [null,null]
    When  method get
    Then status 400