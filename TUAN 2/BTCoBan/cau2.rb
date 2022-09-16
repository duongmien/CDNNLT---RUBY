#BÀI TẬP CƠ BẢN
#2.Nhập 3 cạnh tam giác, kiểm tra điều kiện có phải 3 cạnh tam giác hay ko? nếu đúng --> tính chu vi, diên tích --> in ra
puts "Nhập 3 cạnh của tam giác: "
a_234 = gets.chomp.to_i
b_234 = gets.chomp.to_i
c_234 = gets.chomp.to_i
if (a_234 + b_234 > c_234) && (a_234 + c_234 > b_234) && (b_234 + c_234 > a_234)
    puts "Đây là 3 cạnh của tam giác"
    puts "Chu vi tam giác: #{a_234 + b_234 + c_234}"
    p = (a_234 + b_234 + c_234) / 2 
    puts "Diện tích tam giác: #{Math.sqrt(p*(p-a_234)*(p-b_234)*(p-c_234))}"
else
    puts "Đây không phải là 3 cạnh của tam giác"
end