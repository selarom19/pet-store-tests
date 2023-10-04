Feature: Get pet by ID on regres
 Scenario: Get pet by ID
Given url "https://petstore3.swagger.io" + "/api/v3/pet/10"
  When  method get
  Then status 200


Scenario: Get pet no found
  Given url "https://petstore3.swagger.io" + "/api/v3/pet/-1"
  When  method get
  Then status 404
