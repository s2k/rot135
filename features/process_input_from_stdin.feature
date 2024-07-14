Feature: Processing Command Line Options

  Scenario: Apply ROT13 to STDIN
    Given 'Hello World!' is fed in via STDIN
    Then the output should be "Uryyb Jbeyq!"
