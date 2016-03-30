Feature: Merge Articles
  As a blog administrator
  In order to keep the world spam-free
  I want to be able to merge similar articles on my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And an article exists with title "Entry 1" and text "This is entry 1" and author "I Like Cats"

  Scenario: Admin can successfully merge articles
    Given I am on the edit article page
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should be on the admin content page
    And I should see "Article was successfully merged"
    And I should see "Hello World!"
    And I should see "admin"
    And I should not see "Entry 1"
    And I should not see "I Like Cats"
    When I follow "Hello World!"
    Then I should see "Welcome to Typo. This is your first article. Edit or delete it, then start blogging! This is entry 1"
