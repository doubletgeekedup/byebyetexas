Feature: Add to cart
  As a shopper
  So that I can fill my shopping cart with all the things I want to buy
  I want to be able to add items to my cart

  Scenario: Shopper is reminded to specify size and width when adding items to cart
    Given I am on the Keen Utility Men's Boots page
    When I select the Keen Utility Pittsburgh Boot from the search results
    And add the item to my cart
    Then I should see helpful messages reminding me to select a size and width

  Scenario: Shopper successfully adds one item to cart
    Given I am on the Keen Utility Men's Boots page
    When I select the Keen Utility Pittsburgh Boot from the search results
    And I select size 11 and width EE - Wide
    And add the item to my cart
    Then I should see a message confirming that I have 1 item in my cart
