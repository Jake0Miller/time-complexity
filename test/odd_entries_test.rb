require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/odd_entries'

class OddEntriesTest < Minitest::Test
  def setup
    @small = OddEntries.new(100)
    @mid = OddEntries.new(10_000)
    @large = OddEntries.new(1_000_000)
  end

  def test_uniq_finds_num_duplicates_in_small_array
    assert_equal 20, @small.num_duplicates
  end

  def test_uniq_finds_num_duplicates_in_mid_array
    assert_equal 200, @mid.num_duplicates
  end

  def test_uniq_finds_num_duplicates_in_large_array
    assert_equal 2_000, @large.num_duplicates
  end

  def test_find_duplicates_in_small_array
    skip
    duplicates = @small.find_duplicates
    assert_equal 110, duplicates.length
    assert duplicates.all? {|num| num >= 0 && num <= 100}
  end

  def test_find_duplicates_in_mid_array
    skip
    duplicates = @mid.find_duplicates
    assert_equal 10_100, duplicates.length
    assert duplicates.all? {|num| num >= 0 && num <= 10_000}
  end

  def test_find_duplicates_in_large_array
    skip
    duplicates = @large.find_duplicates
    assert_equal 1_001_000, duplicates.length
    assert duplicates.all? {|num| num >= 0 && num <= 1_000_000}
  end
end
