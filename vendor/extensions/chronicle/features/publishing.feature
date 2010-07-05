Feature: publishing
  As a content editor
  I should be able to publish pages
  So that the most current content
  is visible to the world
  
  Background:
    Given I am logged in as admin
  
  Scenario: publishing a published page
    Given I have a published page
    When I edit the page
    And I save it as published
    Then the page should be saved
    And change the live version
  
  Scenario: publishing a first-version draft
    Given I have a draft page
    When I edit the page
    And I save it as published
    Then the page should be saved
    And change the live version
  
  Scenario: publishing a draft
    Given I have a published page with a draft
    When I edit the page
    And I save it as published
    Then the page should be saved
    And change the live version
    
  Scenario: publishing a draft changes the live page's layout
    Given I have two layouts
    And I have a published page with a draft
    When I edit the page
    And I change the draft page's layout
    And I save it as a draft
    And I edit the page
    And I save it as published
    Then the page should be saved
    And the live version should have the different layout