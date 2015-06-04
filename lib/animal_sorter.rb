class AnimalSorter

  SEA_ANIMALS = ["marlin", "octopus", "fish"]
  LAND_ANIMALS = ["aardvark", "cat", "elephant"]


  def initialize(array)
    @animallist = array
  end


  def to_a
    sea = []
    land = []
    @animallist.each {|animal| if SEA_ANIMALS.include?(animal) then sea << animal elsif LAND_ANIMALS.include?(animal) then land << animal end}
      array = [sea, land]
    return array
  end
end