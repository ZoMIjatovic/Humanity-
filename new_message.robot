*** Settings ***
Library     SeleniumLibrary
Resource    new_message_resource.robot
Library	    Collections			
Library	    RequestsLibrary
Suite Teardown  Close Browser

*** Test Cases ***

TC1 - LogIn on humanity web site
    Given I am on humanity web site 
    When I click on Login
    Then I can access to my account

TC2 - Add new employee
    Given I am on staff board
    When I click on Add button
    Then I can add new employee
TC3 - Time cloc modul
    Given I am on time clock board
    When I click on click in option
    Tnen I can clic on click out option
    