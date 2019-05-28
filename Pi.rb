
puts "1~5桁の数字を入力してください"

str = File.read("C:/Users/intern8/Ruby/Pi/1million.txt")


x = gets.chomp!

if x !~ /^\d{1,5}$/

  puts "入力が正しくありません"

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
