module ShinyChef
class RecipeState
  attr_reader :bowls
  attr_reader :dishes
  attr_reader :ingredients
  attr_accessor :current_instruction
  attr_accessor :next_instruction

  def register_loop_start(verb)
    @loops[verb] = {
      :start => @current_instruction
    }
  end

  def register_loop_end(verbed)
    result = @loops.find {|verb, data| verbed =~ /^#{verb}/i}
    key = result[0];
    @loops[key][:end] = @current_instruction
  end

  def continue_loop(verbed)
    result = @loops.find {|verb, data| verbed =~ /^#{verb}/i}
    key = result[0];
    @next_instruction = @loops[key][:start]
  end

  def end_loop(verb)
    @next_instruction = @loops[verb][:end] + 1
  end

  def stop
    @next_instruction = -1
  end

  def stopped?
    @next_instruction == -1
  end

  def advance_instruction
    @current_instruction = @next_instruction
    @next_instruction = @current_instruction + 1
  end

  def resetip()
    @current_instruction = -1
    @next_instruction = 0
  end
  
  def initialize(bowls, dishes, ingredients)
    @bowls = bowls
    @dishes = dishes
    @ingredients = ingredients.clone
    @current_instruction = -1
    @next_instruction = 0
    @loops = {}
  end
end
end