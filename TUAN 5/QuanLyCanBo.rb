class CanBo
  attr_accessor :name, :gender, :age, :address

  def initialize(name, gender, age, address)
    @name = name
    @gender = gender
    @age=age
    @address=address
  end

  def show
    puts "Name of employee: #{name}"
    puts "Gender of employee: #{gender}"
    puts "Age of employee: #{age}"
    puts "Address of employee: #{address}"
  end
end

class CongNhan < CanBo
  attr_accessor :level
  def initialize(name, gender, age, address,level)
    super(name, gender, age, address)
    @level=level
  end
  def show
    super
    puts "Level of employee: #{level}"
  end

class KySu < CanBo
  attr_accessor :faculity
  def initialize(name, gender, age, address,faculity)
    super(name, gender, age, address)
    @faculity=faculity
  end
  def show
    super
    puts "Faculity of employee: #{faculity}"
  end

class NhanVien < CanBo
  attr_accessor :job
  def initialize(name, gender, age, address,job)
    super(name, gender, age, address)
    @job=job
  end
  def show
    super
    puts "Job of employee: #{job}"
  end


