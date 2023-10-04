Feature: Post user on regres
 Scenario: Post a user
   Given url "https://petstore3.swagger.io" + "/api/v3/user"
   And request {"id": 10,"username": "theUser","firstName": "John","lastName": "James","email": "john@email.com","password": "12345","phone": "12345","userStatus": 1 }
   When method post
   Then status 200