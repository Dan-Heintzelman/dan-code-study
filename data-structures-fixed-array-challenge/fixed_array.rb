class FixedArray
  # attr_accessor :array

  def initialize(size)
    @size = size
    @array = Array.new(size)
  end

  def get(index)
    raise ("Index out of bounds") unless index_safe?(index)
    @array[index]
  end

  def set(index, element)
    raise ("Index out of bounds") unless index_safe?(index)
    @array[index] = element
  end

  def index_safe?(index)
    index < @size && index >= 0
  end
end

# Interface
# FixedArray.new(size) creates a new array @size elements

# FixedArray.get(index) Get a value from the array at the specified index.
