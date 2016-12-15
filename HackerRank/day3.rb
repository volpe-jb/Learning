# If N is odd, print Weird
# If N is even and in the inclusive range of 2 to 5, print Not Weird
# If N is even and in the inclusive range of 6 to 20, print Weird
# If N is even and greater than 20, print Not Weird

N = gets.strip.to_i

if N.odd?
  puts 'Weird'
  
elsif N >= 2 && N <=5
  puts 'Not Weird'

  elsif N >= 6 && N <=20
    puts 'Weird'
  
    elsif N > 20
      puts 'Not Weird'
end  
