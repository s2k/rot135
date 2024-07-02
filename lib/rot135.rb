# frozen_string_literal: true

require_relative 'rot135/version'

# Implements ROT13 (see https://wikipedia.org/wiki/ROT13 for details).
# Call with `Rot135.rot(string)`.
#
module Rot135

  class UnknownSpecifierError < StandardError; end

  def self.rot(text, *specifiers)
    specifiers = [:rot13] if specifiers.empty?

    specifiers.each do |option|
      case option
      when :rot5
        text = text.tr('0123456789', '5678901234')
      when :rot13
        text = text.tr('A-Za-z', 'N-ZA-Mn-za-m')
      else
        raise UnknownSpecifierError, "Unrecognised specifier '#{option} found"
      end
    end
    text
  end
end
