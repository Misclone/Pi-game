
str = File.read("C:/Users/intern8/Ruby/Pi/1million.txt")


x = gets.chomp!

if x !~ /^[0-9]+$/

  puts "入力された文字は数字ではありません"

else

  a = /#{x}/ =~ str

  if a == nil
    a = 0
  end

  if a > 0
    puts "Found! #{x}は#{a+1}番目にありました！"
  else
    puts "Not Found"
  end

end
