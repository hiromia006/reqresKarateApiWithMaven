Feature: Create User POST API

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def requestJson = read("CreateUserRequest.json)
    * def responseJson = read("CreateUserResponse.json")

  Scenario: Create a  User
    Given path '/user'
    And request {"name":"morpheus","job":"leader"}
    When method POST
    Then status 201
    And  print response

  Scenario: Create a user with Response assertion
    Given path '/user'
    And request {"name":"morpheus","job":"leader"}
    When method post
    Then status 201
    And print response
    And  match response == {"name":"morpheus","job":"leader","id":"#string","createdAt":"#ignore"}

  Scenario: Create a user with Response Json Assertion
    Given path '/user'
    And request {"name":"morpheus","job":"leader"}
    When method post
    Then status 201
    And print response
    And  match response == responseJson

  Scenario: Create a user with Request & Response Json
    Given path '/user'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And request requestJson
    When method post
    Then status 201
    And print response
    And match $ == responseJson

  Scenario: Create a user with Request & Response Json,  Set Request parameter
    Given path '/user'
    And request requestJson
    And set requestJson.job = 'engineer'
    When method post
    Then status 201
    Then print response
