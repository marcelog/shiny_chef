module ShinyChef
class Ingredient
  attr_reader :name
  attr_reader :unit
  attr_accessor :value

  def initialize(name, unit, value, liquid)
    @name = name
    @unit = unit
    @value = value
    @liquid = liquid
  end

  def serve
    print @value
    print " " unless liquid?
  end

  def liquefy
    @value = @value.chr
    @liquid = true
  end

  def liquid?
    @liquid
  end

end
end