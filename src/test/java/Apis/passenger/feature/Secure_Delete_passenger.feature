Feature: Online Fake API-passenger-delete-secured
 
@execute
Scenario: Get specific passenger details by id
  Given url secureBaseURL
  And header Authorization = 'Bearer ' + authInfo.authToken
  And path 'passenger/667aafa27ad8fb55654342b0'
  When method delete
  Then status 200
  And match response.message == "Passenger data deleted successfully."