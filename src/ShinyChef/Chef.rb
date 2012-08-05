module ShinyChef
class Chef
  include Logger

  def step_through_instructions(state, method)
    until state.stopped? || state.next_instruction == method.count
      state.advance_instruction
      instruction = method[state.current_instruction]
      yield instruction
    end
  end

  def discover_loops(state, method)
    step_through_instructions(state, method) do |instruction|
      if instruction[:cmd] == :verb_the_ingredient then
        state.register_loop_start instruction[:args][:verb]
      elsif instruction[:cmd] == :verb_the_ingredient_until_verbed then
        state.register_loop_end instruction[:args][:until]
      end
    end
  end

  def cook(recipes, title, bowls, dishes)
    logger.debug "Cooking #{title}"
    title = title.downcase
    recipe = recipes[title]
    method = recipe[:method]

    state = RecipeState.new bowls, dishes, recipe[:ingredients]
    discover_loops state, method
    state.resetip
    step_through_instructions(state, method) do |instruction|
      logger.debug "Doing: \##{state.current_instruction} #{instruction.inspect}"
      args = instruction[:args]
      # Fill in our own arguments
      newargs = args.clone
      newargs[:state] = state
      newargs[:recipes] = recipes
      unless newargs[:mixing_bowl].nil?
        newargs[:mixing_bowl] = state.bowls[newargs[:mixing_bowl]]
      end
      unless newargs[:baking_dish].nil?
        newargs[:baking_dish] = state.dishes[newargs[:baking_dish]]
      end
      unless newargs[:ingredient].nil?
        newargs[:ingredient] = state.ingredients[newargs[:ingredient].downcase]
        if newargs[:ingredient].nil? || newargs[:ingredient].value.nil?
            raise RuntimeError.new( \
              "Can't use ingredient without a value " \
              << " (#{newargs[:ingredient]})" \
            )
        end
      end
      self.__send__ instruction[:cmd], newargs
    end
    serve recipe[:serves], dishes
  end

  def cook_sauce(recipes, title, bowls, dishes)
    logger.debug("Sous chef starting")
    cook(recipes, title, bowls, dishes)
    logger.debug("Ending auxiliary recipe")
    bowls.first[0]
  end

  def refrigerate_for_hours(args)
    hours = args[:hours]
    if hours > 0 then
      serve(hours, args[:state].dishes)
    end
    args[:state].stop
  end

  def serve_with(args)
    recipe = args[:recipe]
    recipes = args[:recipes]
    bowls = args[:state].bowls.copy
    dishes = args[:state].dishes.copy
    chef = self.class.new
    args[:state].bowls.first \
      = chef.cook_sauce(recipes, recipe, bowls, dishes).copy
  end

  def serve_ingredient(ingredient)
    ingredient.serve
  end

  def serve_baking_dish(baking_dish)
    baking_dish.each {|ingredient| serve_ingredient ingredient}
  end

  def serve(how_many, dishes)
    logger.debug "Serving #{how_many} dishes."
    dishes.first(how_many).each {|dish| serve_baking_dish dish}
  end

  def liquefy_the_ingredient(args)
    ingredient = args[:ingredient]
    ingredient.liquefy
  end

  def liquefy_mixing_bowl(args)
    mixing_bowl = args[:mixing_bowl]
    mixing_bowl.each {|i| i.liquefy}
  end

  def clean_the_mixing_bowl(args)
    mixing_bowl = args[:mixing_bowl]
    mixing_bowl.empty
  end

  def put_ingredient_into_mixing_bowl(args)
    ingredient = args[:ingredient]
    mixing_bowl = args[:mixing_bowl]
    mixing_bowl << ingredient
  end

  def fold_ingredient_into_mixing_bowl(args)
    mixing_bowl = args[:mixing_bowl]
    ingredient = args[:ingredient]
    topingredient = mixing_bowl.remove_first
    ingredient.value = topingredient.value
  end

  def take_ingredient_from_refrigerator(args)
    ingredient = args[:ingredient]
    print "How much of '#{ingredient.name}'? "
    if STDIN.gets =~ /(\d+)/ then
      ingredient.value = $1.to_i
    else
      raise RuntimeError.new "Need a numeric number for the ingredient"
    end
  end

  def remove_ingredient_from_mixing_bowl(args)
    mixing_bowl = args[:mixing_bowl]
    ingredient = args[:ingredient]
    toping = mixing_bowl.remove_first
    toping.value -= ingredient.value
    mixing_bowl << toping
  end

  def verb_the_ingredient_until_verbed(args)
    verbed = args[:until]
    state = args[:state]
    state.continue_loop verbed
    unless args[:ingredient].nil?
      args[:ingredient].value -= 1
      logger.debug( \
        "Decrementing #{args[:ingredient].name}, " \
        << " now: #{args[:ingredient].value}" \
      )      
    end
  end

  def combine_ingredient_into_mixing_bowl(args)
    ingredient = args[:ingredient]
    mixing_bowl = args[:mixing_bowl]
    toping = mixing_bowl.remove_first
    toping.value *= ingredient.value
    mixing_bowl << toping
  end

  def divide_ingredient_into_mixing_bowl(args)
    ingredient = args[:ingredient]
    mixing_bowl = args[:mixing_bowl]
    toping = mixing_bowl.remove_first
    toping.value /= ingredient.value
    mixing_bowl << toping
  end

  def add_ingredient_to_mixing_bowl(args)
    ingredient = args[:ingredient]
    mixing_bowl = args[:mixing_bowl]
    toping = mixing_bowl.remove_first
    toping.value += ingredient.value
    mixing_bowl << toping
  end

  def verb_the_ingredient(args)
    verb = args[:verb]
    state = args[:state]
    ingredient = args[:ingredient]
    if ingredient.value != 0 then
      logger.debug("#{ingredient.name} is #{ingredient.value}, continuing")
    else
      logger.debug("#{ingredient.name} is 0, ending loop")
      state.end_loop verb
    end
    
  end

  def pour_contents_into_baking_dish(args)
    mixing_bowl = args[:mixing_bowl]
    baking_dish = args[:baking_dish]
    mixing_bowl.reverse.each {|ingredient| baking_dish << ingredient}
  end

  def stir_mixing_bowl(args)
    mixing_bowl = args[:mixing_bowl]
    minutes = args[:minutes]
    mixing_bowl.roll minutes
  end
end
end
