# frozen_string_literal: true

require_relative 'rot135/version'

# Implements ROT13 (see https://wikipedia.org/wiki/ROT13 for details).
# Call with `Rot135.rot(string)`.
#
module Rot135
  def self.rot(text)
    text.tr('A-Za-z', 'N-ZA-Mn-za-m')
  end
end
