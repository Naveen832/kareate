Feature: Validate The API's Using Post Request

  Background: 
    * url 'https://reqres.in/api/'
    * header Accept ='appilcation/json'

  Scenario Outline: Automate <Name> with Test Case ID <ID>
    Given url 'https://reqres.in/api/users'
    And request {"name" :"Naveen","job" :"Software Engineer"}
    When method POST
    Then status 201
    And Response

    Examples: 
      | Name     | ID       |
      | "Reqres" | "175648" |
