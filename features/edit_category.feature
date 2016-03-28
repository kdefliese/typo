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
    And I press "Save"
    Then I should see "Meow Meow"
