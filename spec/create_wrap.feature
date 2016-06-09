Feature: Create a wrap

Background: 
  Given I am logged in as a registered user

Scenario: Create a wrap from a template
  Given I am on the create a wrap page
  When I select a template
  And I complete the creation process
  Then a wrap is created

Scenario: Publish the wrap
  Given I have a wrap
  When I publish a wrap
  Then the wrap is available