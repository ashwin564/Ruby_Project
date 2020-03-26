Feature: Visit login page in Nejm.org
Scenario: Check username on login page
    Given User is on Nejm.org
    When User enters the SignIn button
    And User Enters valid username and password
    And User clicked on sign in
    Then current logged in user's name should displayed on login page