Feature: Validataing the PUT request

Scenario Outline: Autmationg the <Name> with test case ID- <ID>

Given url 'https://reqres.in/api/users/2'
And request {"name":"Mahesh","job":"Analyst"}
When method PUT
Then status 200

Examples:
|Name    | ID     |
|"Reqres"|"14538"|