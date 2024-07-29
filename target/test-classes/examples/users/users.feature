Feature: Vaidating GET request

  Background: 
    * url 'https://reqres.in/api/'
    * header Accept = 'application/json'

  Scenario Outline: Automating <Name> using GET request of Testcase ID - <ID>
    Given path 'users?page=2'
    When method GET
    And print response
    Then status 200

    Examples: 
      | Name     | ID       |
      | 'reqres' | '172468' |

  @UserConfig
  Scenario Outline: Automating <Name> using GET request of Testcase ID - <ID>
    Given url  URL+'users?page=2'
    When method GET
    And print response
    Then status 200

    Examples: 
      | Name     | ID       |
      | 'reqres' | '172468' |
      
    @params
    Scenario Outline: Automating <Name> using GET request of Testcase ID - <ID>
    Given path 'users'
    And param page =2
    When method GET
    And print response
    Then status 200

    Examples: 
      | Name     | ID       |
      | 'reqres' | '172468' |
      
