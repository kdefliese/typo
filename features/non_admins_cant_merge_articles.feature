Feature: Merge Articles
  As a non-admin blog user
  I can't have special things
  So I can't merge articles

  Background:
    Given the blog is set up
    And an article exists with title "Entry 1" and text "This is entry 1"

  Scenario: Non-admin cannot merge articles
    Given I am on the edit article page
    Then I should not see "Merge Articles"
