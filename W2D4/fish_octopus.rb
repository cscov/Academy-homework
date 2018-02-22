

class Array

  def sluggish
    longest_fish = self[0]
    i = 0

    while i < self.length
      j = i + 1
      while j < self.length
        if self[j].length > self[i].length
          longest_fish = self[j]
        end
        j += 1
      end
      i += 1
    end
    longest_fish
  end

  def dominant(&prc)
    prc ||= Proc.new { |x, y| x <=> y }
    return self if self.length <= 1

    midpoint = self.length / 2
    sorted_left = self.take(midpoint).dominant(&prc)
    sorted_right = self.drop(midpoint).dominant(&prc)

    merged_arr = Array.my_merge(sorted_left, sorted_right, &prc)
    merged_arr.last
  end

  def self.my_merge(left, right, &prc)
    merged_arr = []
    prc ||= Proc.new { |x, y| x <=> y }

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when 1
        merged_arr << right.shift
      when 0
        merged_arr << left.shift
      when -1
        merged_arr << left.shift
      end
    end

    merged_arr.concat(left)
    merged_arr.concat(right)

    merged_arr
  end
end

school = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
puts school.sluggish
puts school.dominant
