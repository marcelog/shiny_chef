module ShinyChef
class Container
  def initialize
    @ingredients = []
  end

  def << (ingredient)
    @ingredients.unshift ingredient.clone
  end

  def each
    if block_given?
      @ingredients.each {|x| yield x}
    else
      @ingredients.each
    end
  end

  def empty
    @ingredients = []
  end

  def remove_first
    @ingredients.shift
  end

  def roll (num)
    print "#{num}\n"
    ingredient = remove_first
    if num > @ingredients.count then
      @ingredients << ingredient
    else
      @ingredients.insert 2, ingredient
    end
  end

  def copy
    container = self.class.new
    @ingredients.reverse.each {|ingredient| container << ingredient}
    container
  end

  def reverse
    cont = self.class.new
    @ingredients.each {|ingredient| cont << ingredient}
    cont
  end

  def next
    @ingredients.first
  end
end
end