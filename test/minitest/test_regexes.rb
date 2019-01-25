require "minitest/autorun"
require "./regex/repeating_regexes.rb"

class TestRegexes < Minitest::Test
  include RepeatingRegexes

  def test_regex_matching_any_number_of_zs_1
    assert_equal 0, "aza" =~ regex_matching_any_number_of_zs
  end

  def test_regex_matching_any_number_of_zs_2
    assert_equal 0, "azzzzzzzzzza" =~ regex_matching_any_number_of_zs
  end

  def test_regex_matching_any_number_of_zs_3
    assert_equal 0, "aa" =~ regex_matching_any_number_of_zs
  end

  def test_regex_matching_at_least_one_z_1
    assert_equal 0, "abcdz" =~ regex_matching_at_least_one_z
  end

  def test_regex_matching_at_least_one_z_2
    assert_equal 0, "zzzzzz" =~ regex_matching_at_least_one_z
  end

  def test_regex_matching_at_least_one_z_3
    refute_equal 0, "abc" =~ regex_matching_at_least_one_z
  end

  def test_regex_matching_z_at_most_once_1
    assert_equal 0, "aza" =~ regex_matching_z_at_most_once
  end

  def test_regex_matching_z_at_most_once_2
    assert_equal 0, "aa" =~ regex_matching_z_at_most_once
  end

  def test_regex_with_exactly_ten_zs
    assert_equal 0, "azzzzzzzzzza" =~ regex_with_exactly_ten_zs
  end

  def test_regex_with_two_or_more_zs_1
    assert_equal 0, "azza" =~ regex_with_two_or_more_zs
  end

  def test_regex_with_two_or_more_zs_2
    assert_equal 0, "azzza" =~ regex_with_two_or_more_zs
  end

  def test_regex_with_two_or_more_zs_3
    refute_equal 0, "aa" =~ regex_with_two_or_more_zs
  end

  def test_regex_with_two_or_more_zs_4
    refute_equal 0, "aza" =~ regex_with_two_or_more_zs
  end

  def test_regex_with_two_or_more_zs_5
    refute_equal 0, "bzzzzz" =~ regex_with_two_or_more_zs
  end

  def test_regex_with_ten_to_twelve_zs_1
    assert_equal 0, "azzzzzzzzzza" =~ regex_with_ten_to_twelve_zs
  end

  def test_regex_with_ten_to_twelve_zs_2
    assert_equal 0, "azzzzzzzzzzza" =~ regex_with_ten_to_twelve_zs
  end

  def test_regex_with_ten_to_twelve_zs_3
    assert_equal 0, "azzzzzzzzzzzza" =~ regex_with_ten_to_twelve_zs
  end

  def test_regex_with_ten_to_twelve_zs_4
    refute_equal 0, "bzzzzzzzzzzzzzz" =~ regex_with_ten_to_twelve_zs
  end

  def test_regex_with_at_most_fifty_zs_1
    assert_equal 0, "aa" =~ regex_with_at_most_fifty_zs
  end

  def test_regex_with_at_most_fifty_zs_2
    assert_equal 0, "aza" =~ regex_with_at_most_fifty_zs
  end

  def test_regex_with_at_most_fifty_zs_3
    assert_equal 0, "azza" =~ regex_with_at_most_fifty_zs
  end

  def test_regex_with_at_most_fifty_zs_4
    assert_equal 0, "azzza" =~ regex_with_at_most_fifty_zs
  end

  def test_regex_with_at_most_fifty_zs_5
    refute_equal 0, "azzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzza" =~ regex_with_at_most_fifty_zs
  end
end