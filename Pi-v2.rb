puts "1~10桁の数字を入力してください"

str = File.read("C:/Users/intern8/Ruby/Pi/3355pi.txt")


x = gets.chomp!

if x !~ /^\d{1,10}$/

  puts "入力が正しくありません"

else

  if str.include?("#{x}") == false
    puts "Not Found"
  else
    a = str.index("#{x}")
    puts "Found! #{x}は#{a+1}番目にありました！"
  end
end
