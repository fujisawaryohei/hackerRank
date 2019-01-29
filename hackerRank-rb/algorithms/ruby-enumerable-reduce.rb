#https://www.hackerrank.com/challenges/ruby-enumerable-reduce/problem
#処理しつつ、返り値を更新させる。
#変数の状態変化をEmmurableを使って利用せずに書いてみる
def sum_terms(n)
  #  1.upto(n).reduce(0){|m,x| m + fn(x)}
  1.upto(n).reduce(0) do |m,x|
    m + fn(x)
  end
end

def fn(x)
  x*x + 1
end

def _sum_terms(n)
  1.upto(n).reduce(0) do |m,x|
    m + fn(x)
  end
end

num = gets.to_i
t1 = sum_terms(num)
a1 = _sum_terms(num)

unless (t1.is_a? Fixnum or t1.is_a? Bignum)
  puts 'Your method must return an Integer (Fixnum, Bignum).'
  exit(0)
end

unless t1 == a1
  puts '0oops! Seems like you done some mistake. Try again!'
  exit(0)
end
