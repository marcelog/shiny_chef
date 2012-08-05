module ShinyChef
class FileParser
  include Logger

  def initialize( \
    filename, recipes_parser, ingredients_parser, instructions_parser \
  )
    @recipes_parser = recipes_parser
    @ingredients_parser = ingredients_parser
    @instructions_parser = instructions_parser
    @parser = open(ARGV[0]) {|f| @recipes_parser.new(f) }

  end

  def main_recipe
    @parser.main_recipe
  end

  def parse_ingredient(ingredient)
    logger.debug "Parsing ingredient '#{ingredient}'"
    (@ingredients_parser.new(ingredient)).ingredient
  end

  def parse_instruction(instruction)
    logger.debug "Parsing instruction '#{instruction}'"
    data = (@instructions_parser.new(instruction)).instruction
    if data.nil? then
      logger.debug "Could not parse instruction, trying to resolve manually"
      # @todo: How to include these into the antlr grammar?
      data = 
        # liquefy (WS the)? WS <ingredient>
        if instruction =~ /liqu[i|e]fy\s+the\s+(.+)/i then
          {:cmd => :liquefy_the_ingredient, :args => {:ingredient => $1}}
        elsif instruction =~ /liqu[i|e]fy\s+(.+)/i then
          {:cmd => :liquefy_the_ingredient, :args => {:ingredient => $1}}
        # verb ((WS the)? WS <ingredient>)? until <verbed>
        elsif instruction =~ /(\w+)\s+the\s+(.+)\s+until\s+(\w+)/i then
          {
            :cmd => :verb_the_ingredient_until_verbed,
            :args => {:ingredient => $2, :verb => $1, :until => $3}
          }
        elsif instruction =~ /(\w+)\s+(.+)\s+until\s+(\w+)/i then
          {
            :cmd => :verb_the_ingredient_until_verbed,
            :args => {:ingredient => $2, :verb => $1, :until => $3}
          }
        # verb (WS the)? WS <ingredient>
        elsif instruction =~ /(\w+)\s+the\s+(.+)/i then
          {
            :cmd => :verb_the_ingredient,
            :args => {:ingredient => $2, :verb => $1}
          }
        elsif instruction =~ /(\w+)\s+(.+)/i then
          {
            :cmd => :verb_the_ingredient,
            :args => {:ingredient => $2, :verb => $1}
          }
        else raise RuntimeError.new(
          "Can't recognice instruction |#{instruction}|"
        )
        end
    end
    logger.debug "Instruction: #{data.inspect}"
    data
  end

  # Convert the ingredients array into a hash, indexed by name
  def parse_ingredients(ingredients)
    ret = {}
    ingredients.each do |ingredient|
      ing = parse_ingredient ingredient
      ret[ing.name.downcase] = ing
    end
    ret
  end

  def parse_method(method)
    method.map {|instruction| parse_instruction instruction}
  end

  def parse_recipe(recipe)
    recipe[:ingredients] = parse_ingredients recipe[:ingredients]
    recipe[:method] = parse_method recipe[:method]
    recipe
  end

  def parse (filename)
    recipes = @parser.recipes
    recipes.each_key {|key| recipes[key] = parse_recipe recipes[key]}
  end
end
end
