class Hocsinh
  attr_accessor :hoTen, :Tuoi, :queQuan

  def initialize(hoten, tuoi, quequan)
    @hoTen = hoten
    @Tuoi = tuoi
    @queQuan = quequan
  end



  def show
    puts "Ho ten: #{@hoTen}"
    puts "Tuoi: #{@Tuoi}"
    puts "Que quan: #{@queQuan}"
  end
end

class Quanlyhocsinh
  attr_accessor :listHS

  def initialize
    hs1 = Hocsinh.new("Duong Mien1", 19, "QB")
    hs2 = Hocsinh.new("Duong Mien2", 19, "QN")
    hs3 = Hocsinh.new("Duong Mien3", 21, "QN")
    hs4 = Hocsinh.new("Duong Mien4", 21, "QN")

    @listHS = [hs1, hs2, hs3, hs4]
  end

  def inputInfo
    print "Nhap ho ten: "
    ht = gets.chomp
    print "Nhap tuoi: "
    tuoi = gets.chomp.to_i
    print "Nhap que quan: "
    que = gets.chomp

    listHS.push(Hocsinh.new(ht, tuoi, que))
  end

  def addStudent(n)
    puts "===== Them Ho Hoc Sinh ====="
    for i in 1..n
      print "\nNhap hoc sinh thu ", i, "\n"
      inputInfo
    end
  end

  def searchbyAge
    i = 1
    puts "DANH SACH HOC SINH 19 TUOI"
    listHS.each do |val|
      if val.Tuoi == 19
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end

  def serchByAgeAndCity
    i = 1
    puts "DANH SACH HOC SINH 20 TUOI"
    listHS.each do |val|
      if val.Tuoi == 21 && val.queQuan == "QN"
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
    i = i - 1
    puts "Số lượng: #{i}"
  end

  def show
    i = 1
    puts "DANH SACH HOC SINH"
    listHS.each do |val|
      print i.to_s + ". "
      val.show
      puts "\n----------------"
      i += 1
    end
  end
end

QLHS = Quanlyhocsinh.new()

choose = 1
while choose < 4 && choose > 0

  puts "\n1. Thêm học sinh"
  puts "2. Hiển thị các học sinh 19 tuổi"
  puts "3. Số lượng học sinh 21 tuổi và quê QN"
  puts "4. Thoát"

  print "Lựa chọn của bạn: "
  choose = gets.chomp.to_i

  case choose
  when 1
    print "Số học sinh cần thêm: "
    n = gets.chomp.to_i
    QLHS.addStudent(n)
    QLHS.show
  when 2
    QLHS.searchbyAge
  when 3
    QLHS.serchByAgeAndCity
    end
end