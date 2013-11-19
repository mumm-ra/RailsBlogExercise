Feature: Add posts
  In order to have a blog
  Potential users should be able to create posts

  Scenario: Create post
    Given I am at the home page
    When I press "New post"
    And I fill the "content" with "My first post"
    And I press "Post"
    Then I should see "My first post"