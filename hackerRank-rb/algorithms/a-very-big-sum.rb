  # input = readlines
  # array = input[1].split(' ')
  # count = 0
  # array.each do |arr|
  #   count += arr.to_i
  # end
  # p count
  input = readlines
  def outputFunc(arr)
    array = arr[1].split(' ')
    count = 0
    array.each do |arr|
      count += arr.to_i
    end
    p count
  end
  outputFunc(input)
