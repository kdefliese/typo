Feature: Create Categories
  As a blog administrator
  I want to be able to create Categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create new Categories
    When I click on Categories
    Then I should be on the new category page
    When I fill in "category_name" with "Meow Meow"
    And I press "Save"
    Then I should see "Meow Meow"
