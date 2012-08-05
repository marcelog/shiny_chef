module ShinyChef
module ContainerHolder

  def []=(id, value)
    @elements[id] = value
  end

  def [](id)
    if @elements[id].nil?
      @elements[id] = @container_class.new
    end
    @elements[id]
  end

  def each
    if block_given?
      @elements.each {|x| yield x}
    else
      @elements.each
    end
  end

  def copy
    holder = self.class.new @container_class
    @elements.keys.each {|k| holder[k] = @elements[k].copy}
    holder
  end

  def first=(value)
    @elements.keys.slice(0...1).each {|x| @elements[x] = value}
  end

  def first(n = 1)
    @elements.keys.slice(0...n).map {|x| @elements[x]}
  end

  def initialize(container_class = Container)
    @elements = {}
    @container_class = container_class
  end
end
end

