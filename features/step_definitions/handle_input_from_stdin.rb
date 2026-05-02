# frozen_string_literal: true

require 'amazing_print'

def context_details
  "STDOUT: #{@stdout.inspect}, STDERR: #{@stderr.inspect} ExitCode: #{@status.inspect})"
end

Given('{string} is fed in via STDIN') do |input|
  cmd = "echo #{input} | ./exe/rot135"
  begin
    @stdout, @stderr, @status = CommandRunner.new(cmd).run
  rescue StandardError => e
    puts '!?!? WHAAT?!'
    ap e
  end
end

Then('STDOUT should be {string}') do |expected_text|
  refute @stdout.nil?, "Expected some content in STDOUT, but got #{context_details}"
  assert_equal 0, @status.exitstatus, "Expected exit code 0 but got #{context_details}"
  assert_equal expected_text, @stdout.strip, "Got #{@stdout.inspect}, #{@stderr.inspect} and #{@status.inspect} instead of #{expected_text}"
end
