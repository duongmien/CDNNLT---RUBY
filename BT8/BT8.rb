class PhanSo
  attr_accessor :tu_234, :mau_234
  def initialize (tu_234,mau_234)
      @tu_234 = tu_234
      @mau_234 = mau_234
  end
  # Method Basic
  def SumPS(phanso1,phanso2)
    ts_234 = phanso1.tu_234 * phanso2.mau_234 + phanso2.tu_234 * phanso1.mau_234
    ms_234 = phanso1.mau_234 * phanso2.mau_234
    PhanSo.new(ts_234,ms_234)
  end
  def Subtraction(phanso1,phanso2)
    ts_234 = phanso1.tu_234 * phanso2.mau_234 - phanso2.tu_234 * phanso1.mau_234
    ms_234 = phanso1.mau_234 * phanso2.mau_234
    PhanSo.new(ts_234,ms_234)
  end
  def Multi(phanso1,phanso2)
    ts_234 = phanso1.tu_234 * phanso2.tu_234
    ms_234 = phanso1.mau_234 * phanso2.mau_234
    PhanSo.new(ts_234,ms_234)
  end
  def Division(phanso1,phanso2)
    ts_234 = phanso1.tu_234 * phanso2.mau_234
    ms_234 = phanso1.mau_234 * phanso2.tu_234
    PhanSo.new(ts_234,ms_234)
  end
# Overload
  def + (other)
      ts_234 = @tu_234 * other.mau_234 + other.tu_234 * @mau_234
      ms_234 = @mau_234 * other.mau_234
      print("Ket qua cua phep cong: ")
      show(ts_234,ms_234)
  end
  def - (other)
      ts_234 = @tu_234 * other.mau_234 - other.tu_234 * @mau_234
      ms_234 = @mau_234 * other.mau_234
      print("Ket qua cua phep tru: ")
      show(ts_234,ms_234)
  end
  def * (other)
      ts_234 = @tu_234 * other.tu_234
      ms_234 = @mau_234 * other.mau_234
      print("Ket qua cua phep nhan: ")
      show(ts_234,ms_234)
  end
  def / (other)
      ts_234 = @tu_234 * other.mau_234
      ms_234 = @mau_234 * other.tu_234
      print("Ket qua cua phep chia: ")
      show(ts_234,ms_234)
  end
  def show (ts_234,ms_234)
      ps = PhanSo.new(ts_234,ms_234)
      ps.rutGon
      ps.toString
  end
  def toString ()
      puts("#{@tu_234}/#{@mau_234}")
  end
  #RutGon
  def UCLN(ts_234,ms_234)
    ts_234 = ts_234.to_i.abs
    ms_234 = ms_234.to_i.abs
    while ts_234 != ms_234 
        if ts_234 > ms_234 
            ts_234 -= ms_234
        else
            ms_234 -= ts_234
        end
    end
    ts_234
  end
  def rutGon()
    i = UCLN(@tu_234,@mau_234)
    @tu_234 = @tu_234 / i
    @mau_234 = @mau_234 / i
  end
end
p1 = PhanSo.new(7,8)
p2 = PhanSo.new(2,3)
#Overload
p1 + p2
p1 - p2
p1 * p2
p1 / p2
## Method
pp = SumPS(p1,p2)
pp.toString
pp = Subtraction(p1,p2)
pp.toString
pp = Multi(p1,p2)
pp.toString
pp = Division(p1,p2)
pp.toString
