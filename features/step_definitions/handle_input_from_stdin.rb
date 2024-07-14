# frozen_string_literal: true

Given('{string} is fed in via STDIN') do |input|
  @output = `echo #{input} | ./exe/rot135`
end

Then('the output should be {string}') do |expected_text|
  assert_equal expected_text, @output.strip
end
