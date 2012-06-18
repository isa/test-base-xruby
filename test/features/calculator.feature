Feature: Addition
   In order to avoid silly mistakes
   As a math idiot
   I want to be told the sum of two numbers

   @javascript
   Scenario: Add two numbers
      Given I go to the Google
      When I enter 50 + 70 into the search box
      Then the result should be 120 on the screen
