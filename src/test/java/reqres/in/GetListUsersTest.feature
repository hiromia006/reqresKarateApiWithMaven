Feature: Get List users API

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  # Get Simple API
  Scenario: Get  List users
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders

  # Get API With Background & Path
  Scenario: Get List Users using Background & Path
    Given path '/users?page=2'
    When method get
    Then status 200
    And print response
    And print responseTime


    # Get API with Background, Path & Param
  Scenario: Get  Users using Background, Path & Param
    Given path '/user'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And print responseTime

  Scenario: Get Users using Background, Path & Param; and assertion
    Given path '/users'
    And param page = 2
    When method get
    Then status 200
    And print response
    And match response.data[0].first_name != null
    And assert response.page == 2
    And  match $.data[5].id == 12
    And assert  response.data.length == 6