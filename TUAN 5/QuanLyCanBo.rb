class Cadres
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

class Worker < Cadres
  attr_accessor :level
  def initialize(name, gender, age, address,level)
    super(name, gender, age, address)
    @level=level
  end
  def show
    super
    puts "Level of employee: #{level}"
  end
end
class Engineer < Cadres
  attr_accessor :faculity
  def initialize(name, gender, age, address,faculity)
    super(name, gender, age, address)
    @faculity=faculity
  end
  def show
    super
    puts "Faculity of employee: #{faculity}"
  end
end
class Staff  < Cadres
  attr_accessor :job
  def initialize(name, gender, age, address,job)
    super(name, gender, age, address)
    @job=job
  end
  def show
    super
    puts "Job of employee: #{job}"
  end
end
class ManagerCadres
  @@cadres = Array.new
    def addCadres(cadres)
        @@cadres.push(cadres)
    end
    
    def searchCadresByName(key)
        searchList = @@cadres.select {|o| o.name.include? key}
        searchList.each{ |sl| sl.show}
    end

    def showListInforCadres()
        @@cadres.each{ |cadres| cadres.show}
    end
end

c1 = Cadres.new("Duong Thi Mien", 24,"Nu", 'Quang Nam')
c2 = Cadres.new("Duong Thi Ngan", 24,"Nu", 'Quang Nam')
c3 = Cadres.new("Duong Anh", 44,"Nam", 'Quang Nam')
c4 = Cadres.new("Nguyen Thu Hong", 44,"Nam", 'Da Nang')
c5 = Cadres.new("Duong Hien An", 14,"Nam", 'Da Nang')

list = ManagerCadres.new()
list.addCadres(c1)
list.addCadres(c2)
list.addCadres(c3)
list.addCadres(c4)
list.addCadres(c5)

# list.showListInforCadres()
list.searchCadresByName("Duong Thi Mien")


