
puts "1~10桁の数字を入力してください"

str = File.read("C:/Users/intern8/Ruby/Pi/Pi-10billion.txt")


x = gets.chomp!

#前後の数
n = 10

if x !~ /^\d{1,10}$/

  puts "入力が正しくありません"

else

  a = /#{x}/ =~ str

  if a == nil
    a = -1
  end

  if 0 <= a && a < n + 1
    v = a.to_i
  else
    v = n
  end

  if a >= 0
    /(.{#{v}})(#{x})(.{#{n}})/ =~ str
    fs = $1
    sc = $2
    th = $3

    puts "Found! #{x}は#{a+1}番目にありました！"
    puts "#{fs}<<#{sc}>>#{th}"
  else
    puts "Not Found"
  end

end
