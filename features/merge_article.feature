Feature: Merge Articles
  As a blog administrator
  In order to keep the world spam-free
  I want to be able to merge similar articles on my blog

  Background:
    Given the blog is set up
    And an article exists with title "Entry 1" and text "This is entry 1"
    And a similar article exists with title "Entry 2" and text "This is entry 2"

  Scenario: Admin can successfully merge articles
    Given I am on the edit article page
    And I am logged into the admin panel
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "2"
    And I press "Merge"
    Then I should be on the admin content page
    And I should see "Articles successfully merged!"
    And I should see "Entry 1"
    And I should not see "Entry 2"
    When I follow "Entry 1"
    Then I should see "This is entry 1 This is entry 2"

  Scenario: Non-admin cannot merge articles
    Given I am on the edit article page
    Then I should not see "Merge Articles"
