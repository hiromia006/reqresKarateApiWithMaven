Feature: Delete User

  Scenario: Delete User
    Given url 'https://reqres.in/api/users/2'
    When method delete
    Then status 204