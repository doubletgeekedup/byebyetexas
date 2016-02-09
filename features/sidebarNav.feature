Feature: Sidebar navigation
  Customer can limit their browsing to the items they are interested in
  Refine results using sidebar links

  Scenario: Refine search by category via sidebar
    Given I am on the zappos home page
    And I select Shoes from the Men's heading on the sidebar
    Then I should be on the Men's Shoes page
    
     Scenario: Refine search by style via sidebar
    Given I am on the zappos home page
    And I select Athletic from the Men's heading on the sidebar
    Then I should be on the Men's Athletic Shoes page

  Scenario: Refine search by brand via sidebar
    Given I am on the Men's Boots page
    And I select the Inov-8 brand from the sidebar
    Then I should be on the Inov-8 Men Shoes page
    And I should only see Inov-8 brand items
