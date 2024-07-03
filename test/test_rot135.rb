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
    assert_equal '6789012345', Rot135.rot('1234567890', specifiers: [:rot5])
    assert_equal '97 + 5 ≠ 96.4444', Rot135.rot('42 + 0 ≠ 41.9999', specifiers: [:rot5])
  end

  def test_it_can_apply_rot5_and_rot13
    assert_equal 'Gur Nafjre vf 97', Rot135.rot('The Answer is 42', specifiers: %i[rot5 rot13])
  end

  def test_the_order_of_rot5_and_rot13_doesnt_matter
    assert_equal 'Gur Nafjre vf 97', Rot135.rot('The Answer is 42', specifiers: %i[rot13 rot5])
  end

  def test_rot5_and_13_are_their_own_inverses
    assert_equal 'The Answer is 42', Rot135.rot(
      Rot135.rot('The Answer is 42', specifiers: %i[rot13 rot5]), specifiers: %i[rot13 rot5]
    )
  end
end
