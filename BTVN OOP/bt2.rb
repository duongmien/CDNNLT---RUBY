class Document
  attr_accessor :_id, :publisherName, :publisherNum

  def initialize (id, pName, pNum)
    @_id = id
    @publisherName = pName
    @publisherNum = pNum
  end

  def showInfo
    return "ID: #{_id}\nPublisher name: #{publisherName}\nPublisher number: #{publisherNum}"
  end
end

class Book < Document
  attr_accessor :authorName, :pageNumber

  def initialize(id, pName, pNum, aName, pageNumber)
    super id, pName, pNum
    @authorName = aName
    @pageNumber = pageNumber
  end

  def showInfo
    return super + "\nAuthor name: #{authorName}\nNumber of pages: #{pageNumber}"
  end
end

class Magazine < Document
  attr_accessor :publisingNumber, :publisherMonth

  def initialize(id, pName, pNum, publisingNumber, publisherMonth)
    super id, pName, pNum
    @publisingNumber = publisingNumber
    @publisherMonth = publisherMonth
  end

  def showInfo
    return super + "\nPublishing number: #{publisingNumber}\nMonth publisher: #{publisherMonth}"
  end
end

class News < Document
  attr_accessor :publisherDate

  def initialize(id, pName, pNum, publisherDate)
    super id, pName, pNum
    @publisherDate = publisherDate
  end

  def showInfo
    return super + "\nDate publisher: #{publisherDate}"
  end
end

class DocumentManager

  attr :documentList

  def initialize
    @documentList = Array.new
  end

  def addNewDocument()
    puts "1. Sách"
    puts "2. Tạp chí"
    puts "3. Báo"
    print "Chọn loại tài liệu: "
    type = gets.chomp
    puts "THÊM MỚI " + (type == '1' ? "Sách" : type == '2' ? "Tạp chí" : "Báo")
    puts "Nhập mã tài liệu: "
    id = gets.chomp
    puts "Nhập tên nhà xuất bản: "
    publisher = gets.chomp
    puts "Nhập số bản phát hành: "
    publisherNum = gets.chomp
    case type
    when '1'
      puts "Nhập tên tác giả: "
      aName = gets.chomp
      puts "Nhập số trang: "
      pageNums = gets.chomp
      obj = Book.new(id, publisher, publisherNum, aName, pageNums)
    when '2'
      puts "Nhập số phát hành: "
      publishNumber = gets.chomp
      puts "Nhập tháng phát hành: "
      month = gets.chomp
      obj = Magazine.new(id, publisher, publisherNum, publishNumber, month)
    when '3'
      puts "Nhập ngày phát hành: "
      publisherDate = gets.chomp
      obj = News.new(id, publisher, publisherNum, publisherDate)
    end
    documentList << obj
  end

  def deleteBook(id)
    result = documentList.delete_if { |doc| doc._id.eql? id }
    puts result
  end

  def getBookByType(type)
    #  1-book 2-magazine 3-news
    return documentList.select { |doc| doc.is_a? type == 1 ? Book : type == 2 ? Magazine : News }
  end

  def displayDocument(id)
    doc = documentList.first { |doc| doc._id == id }
    if doc != nil
      puts "Thông tin tài liệu #{id}:"
      puts doc.showInfo
    else
      puts "Không tìm thấy tài liệu có mã #{id}"
    end

  end
end

documentManager = DocumentManager.new

while true
  system("cls")
  puts("1. Thêm mới 1 tài liệu")
  puts("2. Xóa tài liệu bằng mã")
  puts("3. Xem tài liệu bằng mã")
  puts("4. Tìm kiếm theo mã tài liệu")
  puts("5. Thoát chương trình")
  print "Nhập vào lựa chọn: "
  choosen = gets.chomp
  case choosen
  when '1'
    documentManager.addNewDocument()
  when '2'
    print "Nhập vào id tài liệu muốn xóa: "
    id = gets.chomp
    documentManager.deleteBook(id)
  when '3'
    print "Nhập vào id tài liệu muốn hiển thị: "
    id = gets.chomp
    documentManager.displayDocument(id)
  when '4'
    print "Nhập vào loại tài liệu muốn lọc\n(1-Book 2-Magazine 3-News): "
    type = gets.chomp
    arr = documentManager.getBookByType(type)
    puts "Danh sách #{(type == '1' ? "Sách" : type == '2' ? "Tạp chí" : "Báo")}"
    arr.each { |doc| puts doc.showInfo }
  when '5'
    break
  end
  puts "Nhấn phím bất kỳ để tiếp tục"
  gets
end
puts 'Thanks for using'