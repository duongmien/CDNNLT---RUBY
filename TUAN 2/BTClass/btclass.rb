#BT: Tạo class
# Tạo class sinhvien
# Thiết kế các phương thức cơ bản của class
# Tạo phương thức nhập điểm Toán Lý Hoá của sinh viên, tính điểm trung bình
# In ra các thông tin của sinh viên
class SinhVien
  def initialize(id, name)
     @sv_id = id
     @sv_name = name
  end
  def xuatThongTin()
     puts "Mã sinh viên #@sv_id"
     puts "Tên sinh viên #@sv_name"
  end
  def nhapDiem
      print "Nhập điểm Toán: "
      toan_234 = gets
      print "Nhập điểm Lý: "
      ly_234 = gets
      print "Nhập điểm Hoá: "
      hoa_234 = gets
      puts 'Điểm trung bình là %.2f' % [(toan_234.to_f+ly_234.to_f+hoa_234.to_f)/3]
  end
end

# Create Objects
sv1 = SinhVien.new("1911505310234", "Dương Thị Miên")

# Call Methods
sv1.xuatThongTin()
sv1.nhapDiem