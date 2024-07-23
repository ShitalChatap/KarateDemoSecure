Feature: put details by using passenger id
 
 # @execute
  Scenario: Update passenger details by ID
    Given url secureBaseURL
    And header Authorization = 'Bearer '+authInfo.authToken
    And path 'passenger/6686866e4cb5f75e2e7bf029'
    And request { "_id":"6686866e4cb5f75e2e7bf029","name":" Pradnya ","trips":200,"airline":[{"_id":"66038402-402d-4a3f-baef-7cb5f53697a8","name":"Haulmer Airlines","country":"Chile","logo":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7vAC_SGHIGl8NuaJlU0k5pB2Pc7dK0NkD1A&s","slogan":"Haulmer","head_quaters":"Curicó, Chile","website":"www.haulmer-airlines.com","established":"2024","__v":0}],"__v":0 }
    When method put
    Then status 200
    And match response == {"message": "Passenger data updated successfully."}