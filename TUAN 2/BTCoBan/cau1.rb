#BÀI TẬP CƠ BẢN
#1.Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.
print "Nhập số phần tử mảng: "
num_234 = gets.chomp.to_i
arr_234 = Array.new

for i_234 in 1..num_234 do
    print "Nhập phần tử thứ #{i_234}: "
    n_234 = gets.chomp.to_i
    arr_234.push n_234
end

puts "\nSố lớn nhất trong mảng #{arr_234.max}"
puts "Số bé nhất trong mảng: #{arr_234.min}"
puts "Giá trị trung bình của mảng: #{arr_234.sum/arr_234.size.to_f}"