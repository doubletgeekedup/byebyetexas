Feature: Sidebar navigation
  As a shopper
  So that I can limit my browsing to the items I am interested in
  I want to be able to refine my results using sidebar links

  Scenario: Refine search by category via sidebar link
    Given I am on the zappos home page
    And I select Boots from the Men's heading on the sidebar
    Then I should be on the Men's Boots page

  Scenario: Refine search by brand via sidebar link
    Given I am on the Men's Boots page
    And I select the Keen Utility brand from the sidebar
    Then I should be on the Keen Utility Men Boots page
    And I should only see Keen Utility brand items
