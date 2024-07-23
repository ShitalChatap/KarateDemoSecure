Feature: Online Fake API-Airlines-Get

  @execute
  Scenario: Get all passenger details
    #Given url 'https://api.instantwebtools.net/v1/airlines'
    Given url secureBaseURL
    And header Authorization = 'Bearer '+authInfo.authToken
    And path 'passenger'
    When method GET
    Then status 200

  @execute
  Scenario: Get specific Passenger details based on id
    Given url secureBaseURL
    And header Authorization = 'Bearer '+authInfo.authToken
    And path 'passenger/66781445d6a086b675bb224e'
    When method GET
    Then status 200
    And match responseStatus == 200
    #And match $.{"_id":"73dd5420-3bf9-48f3-a0b6-17cf7aa61b19","name":"American Airlines","country":"United States","logo":"https://example.com/logos/american_airlines.png","slogan":"Going for great","head_quaters":"Fort Worth, Texas","website":"https://www.aa.com","established":"1930"}
   	#And match response.country == "United States"
    #And match $.slogan == "Going for great"
    #And match response.name contains "Ame"
    #And print responseHeaders
    #And print responseHeaders["Content-Type"][0]
