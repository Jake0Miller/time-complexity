class OddEntries
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
        dup = rand(1)
        @array.insert(rand(size+1), num)
      end
    end
    dups = []
    until @array.length == size + 1 + 2*Math.sqrt(size).to_i do
      num = rand(size)
      unless dups.include? num
        dups << num
        @array.insert(rand(size+1), num)
        @array.insert(rand(size+1), num)
      end
    end
    @array
  end

  def num_duplicates
    count = 0
    nums = Hash.new(0)
    @array.each do |num|
      nums[num] += 1
      count += 1 if nums[num] > 1
    end
    count
  end

  def find_odd_entries
    # Try this one without nested .each statements
    # After you get that, try it with just one .each!
  end
end
