require 'minitest/autorun'
require 'minitest/pride'

class HashesTest < Minitest::Test
  def test_1
    # Create a new empty hash called empty
    empty = Hash.new
    assert_equal ({}), empty
  end

  def test_2
    # Create an empty hash with a default value 0
    empty = Hash.new(0)
    assert_equal 0, empty[:not_found]
  end

  def test_3
    # In the line below, create a hash called ages. The hash should have a key of "ben" with a value of 4 and a key of "kelly" with a value of 6
    ages = {"ben" => 4, "kelly" => 6}
    assert_equal 2, ages.length
    assert_equal 4, ages["ben"]
    assert_equal 6, ages["kelly"]
  end

  def test_4
    # In the line below, create a hash called ages. The hash should have a key of :ben with a value of 4 and a key of :kelly with a value of 6.
    ages = {ben: 4, kelly: 6}
    assert_equal 2, ages.length
    assert_equal 4, ages[:ben]
    assert_equal 6, ages[:kelly]

    # There are two different syntaxes for doing this. Use the other way to achieve the same result
    ages = Hash.new
    ages[:ben] = 4
    ages[:kelly] = 6
    assert_equal 2, ages.length
    assert_equal 4, ages[:ben]
    assert_equal 6, ages[:kelly]
  end

  def test_5
    # In the line below, create a new hash with default values of zero; create a "tomatoes" key and a :carrots key
    ingredients = Hash.new(0)
    assert_equal 0, ingredients["tomatoes"]
    assert_equal 0, ingredients[:carrots]
  end

  def test_6
    # Access the value "Grapes of Wrath"
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    grapes = books["John Steinbeck"]
    assert_equal "Grapes of Wrath", grapes
  end

  def test_7
    # Using the books hash, add a new key of "Ernest Hemmingway" with a value of "For Whom the Bell Tolls"
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    books["Ernest Hemmingway"] = "For Whom the Bell Tolls"
    expected = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird",
      "Ernest Hemmingway" => "For Whom the Bell Tolls"
    }
    assert_equal expected, books
  end

  def test_8
    # Change the value associated with "John Steinbeck" to "Of Mice and Men"
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    books["John Steinbeck"] = "Of Mice and Men"
    expected = {
      "John Steinbeck" => "Of Mice and Men",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    assert_equal expected, books
  end

  def test_9
    # Delete the key "Harper Lee"
    books = {
      "John Steinbeck" => "Grapes of Wrath",
      "Harper Lee" => "To Kill a Mockingbird"
    }
    books.delete("Harper Lee")
    expected = {
      "John Steinbeck" => "Grapes of Wrath"
    }
    assert_equal expected, books
  end

  def test_10
    # Access the value "Grapes of Wrath"
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    grapes = books[:John_Steinbeck]
    assert_equal "Grapes of Wrath", grapes
  end

  def test_11
    # Add a new key of :Ernest_Hemmingway with a value of "For Whom the Bell Tolls"
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    books[:Ernest_Hemmingway] = "For Whom the Bell Tolls"
    expected = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird",
      Ernest_Hemmingway: "For Whom the Bell Tolls"
    }
    assert_equal expected, books
  end

  def test_12
    # Change the value associated with :John_Steinbeck to "Of Mice and Men"
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    books[:John_Steinbeck] = "Of Mice and Men"
    expected =  {
      John_Steinbeck: "Of Mice and Men",
      Harper_Lee: "To Kill a Mockingbird"
    }
    assert_equal expected, books
  end

  def test_13
    # Delete the key :Harper_Lee
    books = {
      John_Steinbeck: "Grapes of Wrath",
      Harper_Lee: "To Kill a Mockingbird"
    }
    books.delete(:Harper_Lee)
    expected = {
      John_Steinbeck: "Grapes of Wrath"
    }
    assert_equal expected, books
  end

  def test_14
    # Increment Julio's age by one
    ages = {
      "Jimmy" => 4,
      "Julio" => 8,
      "Juliet" => 9
    }
    ages["Julio"] += 1
    assert_equal 9, ages["Julio"]
  end

  def test_15
    # Increment Julio's age by one
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    ages[:Julio] += 1
    assert_equal 9, ages[:Julio]
  end

  def test_16
    # Get an array of all the names
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    names = ages.keys
    assert_equal [:Jimmy, :Julio, :Juliet], names
  end

  def test_17
    # Get an array of all the ages
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    age_list = ages.values
    assert_equal [4, 8, 9], age_list
  end

  def test_18
    # Find the number of key/value pairs
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    num_pairs = ages.count
    assert_equal 3, num_pairs
  end

  def test_19
    # Figure out if :Jimmy is a key
    ages = {
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    jimmy_in_hash = ages.has_key?(:Jimmy)
    assert_equal true, jimmy_in_hash

    # Now figure out if :Jackie is in the hash
    jackie_in_hash = ages.include?(:Jackie)
    assert_equal false, jackie_in_hash
  end

  def test_20
    ages = {
      # Make the keys the values and vice versa
      Jimmy: 4,
      Julio: 8,
      Juliet: 9
    }
    opposite = ages.invert
    expected = {
      4 => :Jimmy,
      8 => :Julio,
      9 => :Juliet
    }
    assert_equal expected, opposite
  end
end
