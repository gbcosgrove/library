
class Book

  attr_reader :title, :author, :status
  attr_accessor :id

  def initialize(title=nil, author=nil)
    @title = title
    @author = author
    @id = nil
    @status = 'available'
  end

  def check_out
    if @status == 'available'
      @status = 'checked_out'
      true
    elsif @status == 'checked_out'
      false
    end
  end

  def check_in
    if @status == 'checked_out'
      @status = 'available'
    end
  end


end



class Borrower
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Library
  attr_reader :name, :books, :title, :author, :id, :count

  def initialize
    @books = []
    @count = @books.length
  end

  def register_new_book(title, author)
    @books << Book.new(title, author)
    @title = title
    @author = author
    @count += 1
    Book.id = @count
  end


  def add_book(title, author)
  end

  def check_out_book(borrower)
    @borrower = borrower
  end

  def check_in_book
  end

  def available_books
  end

  def borrowed_books
  end

end
