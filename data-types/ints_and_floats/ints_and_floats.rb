require 'minitest/autorun'
require 'minitest/pride'

class IntsAndFloatsTests < Minitest::Test
  def test_1
    lucky = 7
    unlucky = 13
    sum = lucky + unlucky
    assert_equal 20, sum
  end

  def test_2
    lucky = 7
    unlucky = 13
    difference = lucky - unlucky
    assert_equal -6, difference
  end

  def test_3
    # Divide unlucky by lucky
    lucky = 7
    unlucky = 13
    quotient = unlucky / lucky
    assert_equal 1, quotient
  end

  def test_4
    lucky = 7
    unlucky = 13
    quotient = unlucky / lucky.to_f
    assert_equal 1.8571428571428572, quotient
  end

  def test_5
    lucky = 7
    unlucky = 13
    remainder = unlucky % lucky
    assert_equal 6, remainder
  end

  def test_6
    # Find out if the lucky number is even
    lucky = 7
    even = lucky.even?
    assert_equal false, even
  end

  def test_7
    # Round the number to the nearest whole number
    pi = 3.14
    rounded = pi.round
    assert_equal 3, rounded
  end

  def test_8
    # Round the number to one decimal place
    pi = 3.14
    rounded = pi.round(1)
    assert_equal 3.1, rounded
  end



  def test_9
    # Round the number to the next highest whole number
    pi = 3.14
    rounded = pi.ceil
    # pi.floor is the opposite - it would return 3. 
    assert_equal 4, rounded
  end
end
