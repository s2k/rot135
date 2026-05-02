Feature: Processing Command Line Options

  Scenario Outline: Shows help text
    Given rot135 is run without input and option '<Option>'
    Then the output should be as given in file 'help_output'
    Examples:
      | Option |
      | -h     |
      | --help |


  Scenario Outline: Handle parameter for decimal digits
    Given rot135 is run with input '<Input>' and option '<Option>'
    Then STDOUT should be '<ExpectedOutput>'

    Examples: Options trigger processing of decimal digits
      | Option | Input      | ExpectedOutput |
      | -5     | 0123456789 | 5678901234     |
      | --five | 0123456789 | 5678901234     |



  Scenario Outline: Print version info from ROT135 gem
    Given rot135 is run with input '' and option '<Option>'
    Then STDOUT should match gem version

    Examples: Options for version
      | Option    |
      | -v        |
      | --version |

