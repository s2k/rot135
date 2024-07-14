# frozen_string_literal: true

# Put environment & setup information here as needed.

EXPECTATIONS_DIR = File.join( File.dirname(__FILE__), '..', 'expected_test_data')

require 'minitest'

ROT135_CMD = File.join(File.dirname(__FILE__), '../../exe/rot135')

# Provide a Minitest world and initialise it so that Cucumber can use it
class MinitestWorld
  extend Minitest::Assertions
  attr_accessor :assertions

  def initialize
    self.assertions = 0
  end
end

World do
  MinitestWorld.new
end
