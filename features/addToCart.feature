Feature: Add to cart
  As a customer
  I can fill my shopping cart with all the things I would like to to buy
  I want to be able to add items to my cart

  Scenario: Shopper is reminded to specify size and width when adding items to cart
    Given I am on the Inov-8 F-Lite 250 Men's Shoe page
    When I select the Inov-8 F-Lite 250 Blue/Grey/Orange Shoe from the search results
    And add the item to my cart
    Then I should see helpful messages reminding me to select a size and width

  Scenario: Shopper successfully adds one item to cart
    Given I am on the Inov-8 F-Lite 250 Men's Shoe page
    When I select the Inov-8 F-Lite 250 Blue/Grey/Orange Shoe from the search results
    And I select size 12
    And add the item to my cart
    Then there is one item in my cart
