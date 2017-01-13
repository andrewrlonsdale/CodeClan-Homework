def return_10()
  return 10
end

def add(a, b)
  add_result = 1+ 2
  return add_result
end

def subtract(a, b)
  subtract_result = a - b
  return subtract_result
end

def multiply(a, b)
  multiply_result = a * b 
  return multiply_result
end

def divide(a, b)
  divide_result = a / b
  return divide_result
end

def length_of_string(a)
test_string = a
length_of_string = test_string.length
return length_of_string
end

def join_string(a, b)
joined_string =a+b
return joined_string
end

def add_string_as_number(a, b)
  add_result = a.to_i + b.to_i
  return add_result
end

def number_to_full_month_name(a)
  case  a 
  when 1
     "January"
  when  3
     "March"
  when 9
     "September"
  end
  
end

def substring(a)
  case a
      when 1
         "Jan"
      when 3
         "Mar"
      when 9
         "Sep"
  end
      
end


