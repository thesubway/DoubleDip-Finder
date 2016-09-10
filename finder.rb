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
    # idx = 0 # leave outside of BOTH loops, to avoid O(n^3) complexity.
    current_sec1.each do |number|
      idx = 0 # place inside of 1 loop, makes O(n^3) complexity
      while idx < current_sec2.length
        if current_sec2[idx].to_s == number.to_s
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
puts "doubles rtc2, adv writing #{find_doubles(@rtc2, @advanced_writing)}"
puts "doubles rtc3, adv writing #{find_doubles(@rtc3, @advanced_writing)}"
puts "doubles civic eng, adv writing #{find_doubles(@civic_engagement,@advanced_writing)}"
puts "doubles ci3, adv writing #{find_doubles(@ci3, @advanced_writing)}"
puts "doubles arts, adv writing #{find_doubles(@arts, @advanced_writing)}"
puts "doubles ethics, adv writing #{find_doubles(@ethics, @advanced_writing)}"
puts "doubles diversity, adv writing #{find_doubles(@diversity, @advanced_writing)}"

puts "doubles rtc3, els #{find_doubles(@rtc3, @els)}"
puts "doubles ci3, els #{find_doubles(@ci3, @els)}"
puts "doubles diversity, els #{find_doubles(@diversity, @els)}"
puts "doubles civic eng, els #{find_doubles(@civic_engagement, @els)}"
puts "double rtc2, els #{find_doubles(@rtc2, @els)}"
puts "double ethics, els #{find_doubles(@ethics, @els)}"
puts "double arts, els #{find_doubles(@arts, @els)}"
# run ruby finder.rb to display classes
