Feature: Merge Articles
  As a blog administrator
  In order to keep the world spam-free
  I want to be able to merge similar articles on my blog

  Background:
    Given the blog is set up
    And a blog entry exists
    And a similar blog entry exists

  Scenario: Admin can successfully merge articles
    Given I am on the edit article page
    And I am logged into the admin panel
    Then I should see "Merge Articles"
    When I fill in "merge_with" with ""
    And I press "Merge"
    Then I should

  Scenario: Non-admin cannot merge articles
    Given I am on the edit article page
    Then I should not see "Merge Articles"
