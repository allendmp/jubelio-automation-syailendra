Feature: Testing Jubelio Inventory

  Scenario: Modifying Quantity
    Given I am on the Jubelio login page
    When I log in with valid credentials
    And I navigate to the "Persediaan" page
    And I search for "wendy"
    And I select the checkbox
    And I click the "Penyesuaian" button
    And I double click the quantity field
    And I fill in the quantity with "2"
    And I close the quantity input
    And I submit the form
    Then I should see a success message
