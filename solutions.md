# These solutions use built-in Ruby functions. They're pretty good, but don't use them unless you already understand how to do this problem with a single .each loop!

# Don't look at these until you've worked out an answer on your own!

@array.length - @array.uniq.length

@array.group_by{ |e| e }.find_all { |k, v| v.size > 1 }.map(&:first)
