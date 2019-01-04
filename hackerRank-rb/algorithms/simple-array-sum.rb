## https://www.hackerrank.com/challenges/simple-array-sum/problem
input = readlines
arr = input[1].split(' ')
count = 0
  arr.each do |m|
    count += m.to_i
  end
p count
