require 'minitest/autorun'
require 'minitest/pride'

class ArraysTest < Minitest::Test
  def test_0
    # Create a new empty array
    empty = Array.new
    assert_equal [], empty
  end

  def test_1
    # Create and array with the numbers 1 - 5
    nums = (1..5).to_a
    assert_equal [1,2,3,4,5], nums
  end

  def test_2
    # Call a method on the nums variable defined above to access the second element
    nums = [1,2,3]
    actual = nums[1]
    expected = 2
    assert_equal expected, actual
  end

  def test_3
    # In the line below, call a method on the nums variable defined above to access the last element
    nums = [1,2,3]
    actual = nums[-1]
    expected = 3
    assert_equal expected, actual

    # Now try to find another way to achieve the same effect
    nums = [1,2,3]
    actual = nums.last
    expected = 3
    assert_equal expected, actual
  end

  def test_4
    # Call a method on the hummus variable that will tell us how many elements there are in the array
    hummus = ["tahini", "chickpeas", "lemons"]
    assert_equal 3, hummus.size
  end

  def test_5
    # Add the element "Brazil" to the end of the world_cup array
    world_cup = ["Germany", "Mexico", "Iceland", "Portugal"]
    world_cup << "Brazil"
    assert_equal "Brazil", world_cup.last

    # Use a different method to add the element "Japan" to the end of the array
    world_cup.push "Japan"
    assert_equal "Japan", world_cup.last
  end

  def test_6
    # Call a method on the world_cup variable to remove and return the last element of the array
    world_cup = ["Germany", "Mexico", "Iceland", "Portugal"]
    last_element = world_cup.pop
    assert_equal "Portugal", last_element
    assert_equal ["Germany", "Mexico", "Iceland"], world_cup
  end

  def test_7
    # Call a method on the karaoke variable to ask whether "Toxic" is an element or not
    karaoke = ["Shake it Off", "Dancing Queen", "Bohemian Rhapsody"]
    toxic_in_array = karaoke.include?("Toxic")
    assert_equal false, toxic_in_array

    # Call a method on the karaoke variable to ask whether "Dancing Queen" is an element or not
    dancing_queen_in_array = karaoke.include?("Dancing Queen")
    assert_equal true, dancing_queen_in_array
  end

  def test_8
    # Call a method on the band variable to add the element "Vocals" to the beginning of the array
    band = ["Guitar", "Drums", "Bass"]
    assert_equal ["Vocals", "Guitar", "Drums", "Bass"], band.unshift("Vocals")
  end

  def test_9
    # Call a method to remove and return the first element from the garden array
    garden = ["Tulips", "Tomatoes", "Basil", "Peppers"]
    first_element = garden.shift
    assert_equal ["Tomatoes", "Basil", "Peppers"], garden
    assert_equal "Tulips", first_element
  end

  def test_10
    # Call a method on the teams variable to get the second, third, and fourth teams
    teams = ["Rockies", "Avalanche", "Nuggets", "Broncos", "Rapids"]
    some_teams = teams[1..3]
    assert_equal ["Avalanche", "Nuggets", "Broncos"], some_teams

    # Now use a different method on the teams variable to get the first and second teams
    some_teams = teams.take(2)
    assert_equal ["Rockies", "Avalanche"], some_teams
  end

  def test_11
    # Call a method on the fourteeners variable to remove the nils
    fourteeners = ["Pikes Peak", nil, "Mount Elbert", nil, "Mount Evans"]
    fourteeners = fourteeners.compact
    assert_equal ["Pikes Peak", "Mount Elbert", "Mount Evans"], fourteeners
  end

  def test_12
    # Call a method on the pokemon variable to remove the nesting
    pokemon = [["Squirtle", "Charmander", "Bulbasaur"], ["Pikachu"], "Staryu"]
    pokemon = pokemon.flatten
    assert_equal ["Squirtle", "Charmander", "Bulbasaur", "Pikachu", "Staryu"], pokemon
  end

  def test_13
    # Call a method on the scores variables that will move the elements two spots to the left
    scores = [23, 56, 34, 29, 48]
    new_scores = scores.rotate(2)
    assert_equal [34, 29, 48, 23, 56], new_scores

    # Now call a method on the scores variables that will move the elements one spot to the right
    new_scores = scores.rotate(-1)
    assert_equal [48, 23, 56, 34, 29], new_scores
  end

  def test_14
    # Call a method on the vowels variable to remove "y"
    vowels = ["a", "e", "y", "i", "o", "u", "y"]
    vowels.delete("y")
    assert_equal ["a", "e", "i", "o", "u"], vowels
  end

  def test_15
    # Call a method on the furniture variable to add the element "dresser" in between the elements "couch" and "bed"
    furniture = ["couch", "bed", "table"]
    new_furniture = furniture.insert(1, "dresser")
    assert_equal ["couch", "dresser", "bed", "table"], new_furniture
  end

  def test_16
    # Call a method on the children variable to combine them into one string like this: "Sarah, Owen, Peter"
    children = ["Sarah", "Owen", "Peter"]
    one_string = children.join(", ")
    assert_equal "Sarah, Owen, Peter", one_string
  end

  def test_17
    # Call a method on the ascending variable to create an array with the elements in the opposite order
    ascending = [1,2,3,4,5]
    descending = ascending.reverse
    assert_equal [5,4,3,2,1], descending
  end

  # def test_14
  #   skip
  #   dice = [1,2,3,4,5,6]
  #   # Call a method on the dice variable to get a random element out
  #   # of the array
  #   roll = dice
  #   assert_equal true, roll <= 6
  #   assert_equal true, roll >= 1
  #   # Note, this assertion assumes the Ruby Version is 2.4 or higher.
  #   # This test will fail with expecting roll to be a FixNum if the
  #   # Ruby version is 2.3 or earlier
  #   assert_instance_of Integer, roll
  # end

end
