# frozen_string_literal: true

require 'open3'

# Runs a command in a sub shell and captures stdout, stderr and the command's status
class CommandRunner
  attr_reader :command

  def initialize(command)
    @command = command
  end

  def run
    Open3.capture3(command)
  end
end
