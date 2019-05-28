str = File.read("100million.txt")

a = str.gsub(/\s/, "")

File.write("100million", a)
