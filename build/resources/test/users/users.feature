Feature: Test pagina demoblaze

  Background:
    * def urlBase = 'https://api.demoblaze.com/'
    * def signUpPath = 'signup'
    * def loginPath = 'login'

  Scenario Outline: Crear usuario <descripcion>
    Given url urlBase + signUpPath
    And request { 'username': '#(username)' , 'password': '#(password)' }
    When method POST
    * print response
    Then status 200
    Examples:
      | read('signup.csv')|

  Scenario Outline: Login usuario <descripcion>
    Given url urlBase + loginPath
    And request { 'username': '#(username)' , 'password': '#(password)' }
    When method POST
    * print response
    Then status 200
    Examples:
      | read('login.csv')|