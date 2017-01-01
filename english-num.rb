def english_number number
    if number < 0   # no negative numbers
      return 'Please enter a number that isn\'t negative'
    end
    if number == 0
      return 'zero'
    end
    
    num_string = ''     # this is the string we will return
    
    ones_place = ['one',    'two',    'three',
                  'four',   'five',   'six',
                  'seven',  'eight',  'nine']
                  
    tens_place = ['ten',    'twenty',   'thirty',
                  'forty',  'fifty',    'sixty',
                  'seventy','eighty',   'ninety']
                  
    teenagers = ['eleven',    'twelve',     'thirteen',
                 'fourteen',  'fifteen',    'sixteen',
                 'seventeen', 'eighteen',   'nineteen']
                 
# "left" is how much of the number we still have left to write out
#
# "write" is the part we are writing out right now
# this is integer math. normally, 9/100 = 0.09, but is = 0 in integer math
  left = number
  write = left/100   # how many hundreds are left?
  left = left - write*100   # subtract off those hundreds
  
  if write > 0
    # here's the recursion
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
  
    if left > 0
        # so we don't write 'two hundredfifty-one'...
        num_string = num_string + ' '
    end
  end
  
  write = left/10   # how many tens left?
  left = left - write*10    # subtract off those tens
  
  if write > 0
    if ((write == 1) and (left > 0))
        # since we can't write "twenty-two" instead of "twelve", we have to make
        #  a special exception for these
        num_string = num_string + teenagers[left-1]
        # the "-1" is because teenagers[3] is 'fourteen', not thirteen
        
        # since we took care of the digit in the ones place already, we have
        #   nothing left to write
        left = 0
    else
        num_string = num_string + tens_place[write-1]
        # the "-1" is because the tens_place[3] is 'forty', not 'thirty'
    end   
    
    if left > 0
        # so we don't write 'sixtyfour'...
        num_string = num_string + '-'
    end
  end
  
  write = left      # how many ones left to write out?
  left = 0
  
  if write > 0
      num_string = num_string + ones_place[write-1]
      # The "-1" is because ones_place[3] is 'four', not 'five'
  end
  
  # Now we just return num_string
  num_string
end

puts english_number(   0)
puts english_number(   9)
puts english_number(  10)
puts english_number(  11)
puts english_number(  20)
puts english_number(  99)
puts english_number( 100)
puts english_number( 101)
puts english_number( 200)
puts english_number(1000)
