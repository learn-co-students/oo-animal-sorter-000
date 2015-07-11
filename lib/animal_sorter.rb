# Build a class AnimalSorter

# Make sure there are two constants that AnimalSorter knows about, 
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.

require "pry"

class AnimalSorter

	LAND_ANIMALS = ["aardvark", "cat", "elephant"]
	SEA_ANIMALS = ["marlin", "octopus", "fish"]

	def initialize(animal_list)
		@animal_list = animal_list
	end

	def to_a
		sea_array = []
		land_array = []
		@animal_list.each do |animal|
			if SEA_ANIMALS.include?(animal)
				sea_array<<animal
			else
				land_array<<animal
			end
		end
		answer_array = [sea_array, land_array]
	end

end


