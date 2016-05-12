require_relative "class_list.rb"
def find_doubles(hash1,hash2)
  doubles = []
  hash1.keys.each do |key|
    current_sec1 = hash1[key]
    current_sec2 = hash2[key]
    if current_sec2 == nil
      # so hash2 doesn't have that class
      next
    end
    puts current_sec1
    puts current_sec2
    idx = 0 # leave outside of BOTH loops, to avoid O(n^3) complexity.
    current_sec2.each do |number|
      while idx < current_sec1.length
        if current_sec1[idx].to_s > number.to_s
          break
        end
        if current_sec1[idx].to_s == number.to_s
          # match found
          doubles.push("#{key} #{number}")
          break
        end
        idx += 1
      end
    end
  end
  doubles
end
puts "doubles #{find_doubles(@rtc2, @els)}"
