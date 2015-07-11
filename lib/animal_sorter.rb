# Build a class AnimalSorter
require "pry"

# Make sure there are two constants that AnimalSorter knows about, 
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.

class AnimalSorter

  attr_reader :animal_list

LAND_ANIMALS = []
SEA_ANIMALS = []

  def initialize(animal_list)
    @animal_list = animal_list
  end

  def to_a
    array = []
       animal_list.each do |animal|
      if ((animal == "aardvark" || animal == "cat" || animal == "elephant") && ( !LAND_ANIMALS.include?("aardvark") == true || !LAND_ANIMALS.include?("cat") == true || !LAND_ANIMALS.include?("elephant") == true) == true)
        LAND_ANIMALS << animal
      elsif ((animal == "marlin" || animal == "octopus" || animal == "fish") && (!SEA_ANIMALS.include?("marlin") || !SEA_ANIMALS.include?("octopus") || !SEA_ANIMALS.include?("fish")))
        SEA_ANIMALS << animal
      else
      end
    end
    array << SEA_ANIMALS  
    array << LAND_ANIMALS
    array
  end

end