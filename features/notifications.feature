Feature: Ask for notifications
  As a shopper
  So that I can buy my new shoes as soon as they are available
  I want to be able to ask for notifications

  Background:
    Given I am on the Keen Utility Men's Boots page
    And I have selected the Keen Utility Pittsburgh Boot from the search results

  Scenario: Shopper is given opportunity to request notification when size is in stock
    When I don't see my size
    Then the NOTIFY ME window should open

  Scenario: Shopper requests notification when size and width become available
    When I don't see my size
    And I ask to be notified when size 10 width EE - Wide is in stock
    Then I should see a notification message for size 10 width EE - Wide
