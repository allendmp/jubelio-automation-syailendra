Feature: Jubelio Login

  Scenario: Logging in to Jubelio
    Given I am on the Jubelio login page
    When I log in with valid credentials
    Then I should see the title of the logged-in page
