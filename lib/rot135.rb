# frozen_string_literal: true

require_relative "rot135/version"

module Rot135
  class Error < StandardError; end

  def self.rot(text)
    text.tr("A-Za-z", "N-ZA-Mn-za-m")
  end
end
