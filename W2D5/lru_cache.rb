require 'byebug'

class LRUCache
  attr_reader :cache, :capacity


  def initialize(cache = Array.new(4), capacity = 4)
    @cache = cache
    @capacity = capacity
  end

  def count
    # returns number of elements currently in cache
    count = 0
    cache.each do |el|
      count += 1 if !el.nil?
    end
    count
  end

  def add(el)
    # adds element to cache according to LRU principle
    # debugger
    cache.unshift(el)
    preserve_size
  end

  def show
    # shows the items in the cache, with the LRU item first
    puts "[]" if count.zero?

    puts "#{cache[0...count]}"
  end

  private
  # helper methods go here!

  def preserve_size
    cache.delete cache.last if count == capacity
  end
end

johnny_cache = LRUCache.new
johnny_cache.add("I walk the line")
p johnny_cache.count
johnny_cache.add(5)
p johnny_cache.count
johnny_cache.show
