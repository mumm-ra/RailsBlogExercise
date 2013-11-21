Feature: Add posts
  In order to have a blog
  Potential users should be able to create posts and comment them

  Scenario: Create post
    Given I am at the home page
    When I press "New Post"
    And I fill the "post_content" with "My first post"
    And I press "Create Post"
    Then I should see "My first post"

  Scenario: Comment a post
    Given I have a post
    And I am at the home page
    When I press "Show"
    And I press "Comment"
    And I fill the "comment_content" with "My first comment"
    And I press "Create Comment"
    Then I should see "My first comment"