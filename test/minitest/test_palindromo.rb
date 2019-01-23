require "minitest/autorun"
require "./palindromo.rb"

class TestPalindromes < Minitest::Test
  def test_palindromo
    assert_equal true, es_palindromo?("abalaba")
  end

  def test_palindromo_2
    assert_equal true, es_palindromo?("ana")
  end

  def test_palindromo_3
    assert_equal true, es_palindromo?("salas")
  end

  def test_palindromo_4
    assert_equal false, es_palindromo?("andres")
  end

  def test_palindromo_5
    assert_equal true, es_palindromo?("somos")
  end

  def test_palindromo_6
    refute_equal true, es_palindromo?("polar")
  end
end