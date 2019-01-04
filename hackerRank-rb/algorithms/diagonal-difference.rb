input = readlines
def diagonalDiff(input)
  i = 0
  l = 0
  r = input[0].to_i - 1
  leftcount = 0
  rightcount = 0
  array = []
  arr = []
  while i < input[0].to_i
    array[i] = input[i+1].split(' ') #array型を返す関数splitなのでto_iできない
    arr[i] = array[i].map{|a| a.to_i}
    i += 1
  end
  arr.each do |a|
    leftcount += a[l]
    l += 1
  end
  arr.each do |a|
    rightcount += a[r]
    r -= 1
  end
  count = leftcount - rightcount
  abscount = count < 0 ? count.abs : count
  p abscount
end
diagonalDiff(input)
