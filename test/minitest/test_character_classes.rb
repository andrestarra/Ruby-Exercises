require "minitest/autorun"
require "./regex/character_classes.rb"

class TestCharacterClasses < Minitest::Test
  def class_instance
    @character_classes = CharacterClasses.new
  end

  #EXERCISE TEST 1
  def test_matching_at_least_three_characters_1
    assert_equal 0, "abc" =~ class_instance.matching_at_least_three_characters
  end

  def test_matching_at_least_three_characters_2
    assert_equal 0, "a12" =~ class_instance.matching_at_least_three_characters
  end

  def test_matching_at_least_three_characters_3
    assert_equal 0, "a b" =~ class_instance.matching_at_least_three_characters
  end

  def test_matching_at_least_three_characters_4
    assert_equal 0, "hao iailafl al a " =~ class_instance.matching_at_least_three_characters
  end

  def test_matching_at_least_three_characters_5
    refute_equal 0, "z" =~ class_instance.matching_at_least_three_characters
  end

  def test_matching_at_least_three_characters_6
    assert_equal 0, "   " =~ class_instance.matching_at_least_three_characters
  end

  #EXERCISE TEST 2
  def test_matching_telephone_number_1
    assert_equal 0, "650-123-1234" =~ class_instance.matching_telephone_number
  end

  def test_matching_telephone_number_2
    assert_equal 0, "617-857-1234" =~ class_instance.matching_telephone_number
  end

  def test_matching_telephone_number_3
    assert_equal 0, "322-222-2222" =~ class_instance.matching_telephone_number
  end

  def test_matching_telephone_number_4
    refute_equal 0, "650 123 1234" =~ class_instance.matching_telephone_number
  end

  def test_matching_telephone_number_5
    refute_equal 0, "650 123 12" =~ class_instance.matching_telephone_number
  end

  def test_matching_telephone_number_6
    refute_equal 0, "3222222222" =~ class_instance.matching_telephone_number
  end

  def test_matching_telephone_number_7
    refute_equal 0, "----------" =~ class_instance.matching_telephone_number
  end

  #EXERCISE TEST 3
  def test_matching_two_numbers_1
    assert_equal 0, "23" =~ class_instance.matching_two_numbers
  end

  def test_matching_two_numbers_2
    assert_equal 0, "a 2 b 4" =~ class_instance.matching_two_numbers
  end

  def test_matching_two_numbers_3
    assert_equal 0, "a 4 s sa_faioshd-3 sada" =~ class_instance.matching_two_numbers
  end

  def test_matching_two_numbers_4
    refute_equal 0, "345" =~ class_instance.matching_two_numbers
  end

  def test_matching_two_numbers_5
    refute_equal 0, "5f" =~ class_instance.matching_two_numbers
  end

  def test_matching_two_numbers_6
    refute_equal 0, "4asd5a  1" =~ class_instance.matching_two_numbers
  end

  #EXERCISE TEST 4
  def test_matching_not_lowercase_1
    assert_equal 0, "Abc" =~ class_instance.matching_not_lowercase
  end

  def test_matching_not_lowercase_2
    assert_equal 0, "X" =~ class_instance.matching_not_lowercase
  end

  def test_matching_not_lowercase_3
    assert_equal 0, "James" =~ class_instance.matching_not_lowercase
  end

  def test_matching_not_lowercase_4
    refute_equal 0, "james" =~ class_instance.matching_not_lowercase
  end

  def test_matching_not_lowercase_5
    refute_equal 0, "abc" =~ class_instance.matching_not_lowercase
  end

  def test_matching_not_lowercase_6
    assert_equal 0, "iPhone" =~ class_instance.matching_not_lowercase
  end
end