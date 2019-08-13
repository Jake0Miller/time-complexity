# These solutions use built-in Ruby functions. They're pretty good, but don't use them unless you already understand how to do this problem with a single .each loop!

# Don't look at these until you've worked out an answer on your own!

def num_duplicates
  count = 0
  nums = Hash.new(0)
  @array.each do |num|
    nums[num] += 1
    count += 1 if nums[num] > 1
  end
  count
end

def find_duplicates
  dups = []
  nums = Hash.new(0)
  @array.each do |num|
    nums[num] += 1
    dups << num if nums[num] > 1
  end
  dups
end
