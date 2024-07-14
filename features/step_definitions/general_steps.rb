# frozen_string_literal: true

Given('rot135 is run with {string} only') do |options|
  @cmd_output = `#{ROT135_CMD} #{options}`
end

Then('the output should be as given in file {string}') do |_string|
  expected_text = File.read(File.join(EXPECTATIONS_DIR, 'help_output.txt'), chomp: true).strip
  assert_equal expected_text, @cmd_output.strip
end
