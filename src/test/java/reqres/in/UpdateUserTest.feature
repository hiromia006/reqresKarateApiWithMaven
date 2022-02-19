Feature: Update API Test Cases

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def requestJson = read("CreateUserRequest.json)
    * def responseJson = read("CreateUserResponse.json")


  Scenario: Update User API
    Given path 'users/2'
    And request requestJson
    When method put
    Then status 200
    And print response
    And match response.updatedAt != null