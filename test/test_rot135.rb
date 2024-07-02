# frozen_string_literal: true

require 'test_helper'

class TestRot135 < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Rot135::VERSION
  end

  def test_it_rot13s_hello_world_with_an_exclamationmark
    assert_equal 'Uryyb Jbeyq!', Rot135.rot('Hello World!')
  end

  def test_it_ignores_decimal_digits_and_symbols_by_default
    assert_equal '42 + 0 ≠ 41.9999', Rot135.rot('42 + 0 ≠ 41.9999')
  end

  def test_it_rot5s_base_ten_numbers
    assert_equal '6789012345', Rot135.rot('1234567890', :rot5)
    assert_equal '97 + 5 ≠ 96.4444', Rot135.rot('42 + 0 ≠ 41.9999', :rot5)
  end
end
