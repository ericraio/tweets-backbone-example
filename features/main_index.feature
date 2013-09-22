Feature: Viewing Home Page

  @javascript
  Scenario: Posting a Tweet
    Given I am on the home page
    When I post a tweet
    Then I should see my tweet

    When I am on the home page
    Then I should see my tweet
