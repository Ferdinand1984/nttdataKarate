Feature: Test pagina demoblaze

  Background:
    * def urlBase = 'https://api.demoblaze.com/'
    * def signUpPath = 'signup'
    * def logiPath = 'login'
    * def username = 'usuario1718495201'
    * def password = 'usuario1718495201'


  Scenario Outline: Crear usuario <descripcion>
    Given url urlBase + signUpPath
    And request { 'username': <username> , 'password': <password> }
    When method POST
    * print response
    Then status 200
    Examples:
      | username            | password            | descripcion |
      | 'usuario1718495203' | 'usuario1718495203' | nuevo       |
      | 'usuario1718495201' | 'usuario1718495201' | existente   |

  Scenario Outline: Login usuario <descripcion>
    Given url urlBase + logiPath
    And request { 'username': <username> , 'password': <password> }
    When method POST
    * print response
    Then status 200
    Examples:
      | username            | password            | descripcion |
      | 'usuario1718495201' | 'usuario1718495201' | existente   |
      | 'userNoexistenteIX' | 'userNoexistenteIX' | inexistente |