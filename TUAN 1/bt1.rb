#1.Viết lệnh hiển thị "Xin chào" + tên SV + MSV
puts "Xin chào - Tên: Dương Thị Miên - MSV: 1911505310234"
puts

#2. Nhập 1 số từ bàn phím, in ra số đó
print "Nhập một số bất kỳ từ bàn phím: "
num = gets
puts "Số bạn vừa nhập là: #{num}"
puts

#3. So sánh 2 giá trị nhập vào từ bàn phím, in ra giá trị lớn hơn
puts "So sánh 2 giá trị nhập vào từ bàn phím"
print "Nhập số thứ nhất: a = "
num_1 = gets.chomp
print "Nhập số thứ nhất: b = "
num_2 = gets.chomp
if num_1.to_i > num_2.to_i
    puts "Kết quả là: số #{num_1} là số lớn hơn"
elsif num_1.to_i < num_2.to_i
    puts "Kết quả là: số #{num_2} là số lớn hơn"
else
    puts "Hai số có giá trị bằng nhau"
end