class Human
  attr_accessor :name, :gender, :hairColor, :height, :weight, :phone, :email

  def initialize(name, gender, height, weight, phone, email, hairColor)
    @name = name
    @gender = gender
    @height = height
    @weight = weight
    @phone = phone
    @email = email
    @hairColor = hairColor
  end

  def show
    puts "Name of student: #{name}"
    puts "Gender of student: #{gender}"
    puts "Height of student: #{height}cm - Weight of student: #{weight}kg"
    puts "Hair color of student: #{hairColor}"
    puts "Contact of student: #{phone} - #{email}"
  end
end

class Student < Human

  attr_accessor :id, :_class, :school, :grade

  def initialize(name, gender, height, weight, phone, email, hairColor, id, _class, school, grade)
    super(name, gender, height, weight, phone, email, hairColor)
    @id = id
    @_class = _class
    @school = school
    @grade = grade
  end

  def show
    super
    puts "Identification (ID): #{id}"
    puts "Studying at school: #{school} - #{_class}"
    puts "Average grade of student: #{grade.round(2)}"
  end
end
student = Student.new("Dương Thị Miên", "Female", 168, 65, "0946794778","duongthimien@gmail.com", "black", "1911505310234", "19T2", "UTE UDN", 9.7256)
student2 = Student.new("Dương Thị Ngân", "Female", 168, 65, "0946794778","duongthimien@gmail.com", "black", "1911505310234", "19T2", "UTE UDN", 9)
student3 = Student.new("Dương Anh", "Male", 168, 65, "0946794778","duongthimien@gmail.com", "black", "1911505310234", "19T2", "UTE UDN", 8.78)
student4 = Student.new("Nguyễn Thị Hồng", "Female", 168, 65, "0946794778","duongthimien@gmail.com", "black", "1911505310234", "19T2", "UTE UDN", 10.0)

stds = [student, student2, student3, student4]
puts "Điểm trung bình trước khi sắp xếp:"
puts"---------------------------"
stds.each do |single|
    single.show()
    puts"---------------------------"
end

puts "Điểm trung bình sau khi sắp xếp:"
puts"---------------------------"
stds = stds.sort_by!{|a| a.grade}
stds = stds.reverse
i = 1
stds.each do |s|
  puts "Vị trí thứ #{i}: #{s.id} - #{s.name}"
  puts s.grade.round(2)
  i+=1
end