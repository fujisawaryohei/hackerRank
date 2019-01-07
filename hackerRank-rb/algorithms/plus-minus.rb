#https://www.hackerrank.com/challenges/plus-minus/problem
input = readlines
array = input.map{|a| a.split(' ')}
elem = array[1].map{|a| a.to_i}
plus = 0
minus = 0
zero = 0
  elem.each do |int|
    int > 0 ? plus += 1 : int == 0 ? zero += 1 : minus += 1 
  end
p Rational(plus,input[0].to_i).to_f
p Rational(minus,input[0].to_i).to_f
p Rational(zero,input[0].to_i).to_f
