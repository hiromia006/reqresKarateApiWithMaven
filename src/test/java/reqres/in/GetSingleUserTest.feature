Feature: Get Single User API

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

    # Get  API
  Scenario: Get  Single users
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders

  # Get API With Background & Path
  Scenario: Get Single User using Background & Path
    Given path '/users/2'
    When method get
    Then status 200
    And print response
    And print responseTime

  Scenario: Get User using Background, Path & Param; and assertion
    Given path '/users/2'
    When method get
    Then status 200
    And print response
    And match response.data.last_name != null
    And assert response.data.id == 2