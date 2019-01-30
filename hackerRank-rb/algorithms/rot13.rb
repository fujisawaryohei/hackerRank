#https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem
#example => int型の配列をString型にかえる
# array = [1,2,3,4]
# arr = []
# array.each do |a|
#   arr.push(a.to_s)
# end
# p arr
# p arr = array.map{|x| x.to_s}
#numbers = ["68","65","6C","6C","6F"]
#numbers.collect{|item| item.to_i(16)}

def rot13(secret_message)
  secret_message.collect do |msg|
    rotate13(msg)
  end
end

def rotate13(s)
  s.tr("A-Za-z","N-ZA-Mn-za-m")
end

def _rot13(secret_messages)
  secret_messages.map do |msg|
    rotate13(msg)
  end
end

msg = ['qrygn', 'zrrg ng pubpbyngr pbeare','gra zra', 'gjb anpxhc grnzf', 'zvqavtug rkgenpgvba']

a1 = _rot13(msg)
t1= rot13(msg)
p a1
p t1

unless t1.is_a? Array
  puts 'Your method must return an Array object'
  exit(0)
end

unless t1.first.is_a? String
  puts 'The retruned object must contain only strings.'
  exit(0)
end

unless a1.length == t1.length
  puts 'Oops! Are you sure you have decoded all the messages?'
  exit(0)
end

unless t1 == a1
  puts 'Ah! Don`t fail the mission my friend. Decode carefully!'
  exit(0)
end
