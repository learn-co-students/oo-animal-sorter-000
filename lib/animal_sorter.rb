# Build a class AnimalSorter

# Make sure there are two constants that AnimalSorter knows about, 
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.
class AnimalSorter
  SEA_ANIMALS = ["marlin", "octopus", "fish"]
  LAND_ANIMALS = ["aardvark", "cat", "elephant"]
  
  def initialize(array)
    @contents = array
  end
  
  def to_a
    @contents.each_with_object([[],[]]) do |e, res|
	  SEA_ANIMALS.include?(e) ? res[0] << e : res[1] << e
	  res[0].sort
	  res[1].sort
	end
  end
end