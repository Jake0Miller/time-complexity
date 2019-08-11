class DuplicateElements
  attr_reader :array

  def initialize(size)
    @array = make_array(size)
  end

  def make_array(size)
    @array = [*0..size]
    dups = []
    until @array.length == size + 1 + Math.sqrt(size).to_i do
      num = rand(size)
      unless dups.include? num
        dups << num
        @array.insert(rand(size+1), num)
      end
    end
    @array
  end

  def num_duplicates
    count = 0
    @array.each_with_index do |current_number, i|
      break if i == @array.length - 1
      @array[i+1..-1].each_with_index do |check_number, j|
        if current_number == check_number
          count += 1
        end
      end
    end
    count

    # Rewrite this without nested .each statements
    # After you get that, try using built-in Ruby methods!
  end

  def find_duplicates
    # Now try this one without nested .each statements
    # After you get that, try using built-in Ruby methods!
  end
end
