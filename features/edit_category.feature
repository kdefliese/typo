Feature: Edit Categories
  As a blog administrator
  I want to be able to edit Categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I have an existing Category named "Meow"

  Scenario: Successfully edit existing Categories
    When I click on Categories
    Then I should be on the new category page
    When I follow "Meow"
    Then I should be on the edit category page
    When I fill in "category_name" with "Meow Meow"
    And I fill in "category_keywords" with "Cats Meow"
    And I fill in "category_description" with "I really really like cats"
    And I press "Save"
    Then I should see "Meow Meow"
    And I should see "Cats Meow"
    And I should see "I really really like cats"

  Scenario: Try to edit a Category and remove the name
    When I click on Categories
    Then I should be on the new category page
    When I follow "Meow"
    Then I should be on the edit category page
    When I fill in "category_name" with ""
    And I press "Save"
    Then page should have error message "Category could not be saved."
