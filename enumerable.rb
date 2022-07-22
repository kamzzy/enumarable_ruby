module MyEnumerable
  def all?
    condition = true
    each { |num| condition = false unless yield num }
    condition
  end

  def any?
    condition = false
    each { |num| condition = true if yield num }
    condition
  end

  def filter?
    filtered_array = []
    each { |num| filtered_array.push(num) if yield num }
    filtered_array
  end
end
