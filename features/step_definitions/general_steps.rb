# frozen_string_literal: true

Given('rot135 is run without input and option {string}') do |option|
  @cmd_output = `#{ROT135_CMD} #{option}`
end

Given('rot135 is run with input {string} and option {string}') do |input, option|
  @cmd = "echo #{input} | #{ROT135_CMD} #{option}"

  @runner = CommandRunner.new(@cmd)
  @stdout, @stderr, @status = @runner.run
end

Then('the output should be as given in file {string}') do |_string|
  expected_text = File.read(File.join(EXPECTATIONS_DIR, 'help_output.txt'), chomp: true).strip
  assert_equal expected_text, @cmd_output.strip
end

Then('STDOUT should match gem version') do
  assert_equal "rot135 version #{Rot135::VERSION}", @stdout.strip, "Unexpected restult for command #{@cmd}"
end
