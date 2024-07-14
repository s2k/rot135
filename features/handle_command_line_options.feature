@postpone
Feature: Processing Command Line Options

  Scenario: Show help text using 'help'
    Given rot135 is run with 'help' only
    Then the output should be as given in file 'help_output'
