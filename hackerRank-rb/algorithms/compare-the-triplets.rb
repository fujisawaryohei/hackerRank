## https://www.hackerrank.com/challenges/compare-the-triplets/problem
  input = readlines
  alice = input[0].split(' ')
  bob = input[1].split(' ')
  points = []
  alicepoint = 0
  bobpoint = 0
  i = 0
  while i < alice.length do
    if alice[i].to_i > bob[i].to_i
      alicepoint += 1
    elsif alice[i].to_i < bob[i].to_i
      bobpoint += 1
    end
    i+=1
  end
  print("#{alicepoint} #{bobpoint}")
