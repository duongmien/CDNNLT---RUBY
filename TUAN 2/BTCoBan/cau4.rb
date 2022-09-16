# 4.Viết chương trình để nhập ba số nguyên đã biết, sau đó in ra màn hình theo thứ tự tăng dần và giảm dần.

puts "Nhập 3 số nguyên: "
arr = Array.new

for i in 1..3 do
    n = gets.chomp.to_i
    arr.push n
end
puts "Thứ tự tăng dần #{arr.sort}"
puts "Thứ tự giảm dần #{arr.sort.reverse}"