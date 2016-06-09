Feature: Create a wrap

Background: 
  Given I am logged in as a registered user

Scenario: Publish a wrap from a template
  Given I am on the create a wrap page
  When I select a template
  And I complete the creation process
  And I publish the wrap
  Then a wrap is published
