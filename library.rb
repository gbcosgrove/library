
class Book

  attr_reader :title
  attr_reader :author
  attr_reader :id
  attr_reader :status

  def initialize(title=nil, author=nil)
    @title = title
    @author = author
    @id = nil
    @status = 'available'
  end

  def check_out
    if @status == 'available'
      @status = 'checked_out'
    else
      return false
    end
  end

  def check_in
    @status = 'available'
  end


end



class Borrower
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Library
  attr_accessor :books
  attr_accessor :title
  attr_accessor :author
  attr_writer :id

  def initialize
    @books = []
  end

  def count
    @books.length
  end

  def id
    @books.length
  end

  def register_new_book(title, author)
    Book.new(title, author)
    @title = title
    @author = author
    @books << {title => author}

  end

=begin
  def books

  end

  def add_book(title, author)
  end

  def check_out_book(book_id, borrower)
    @book_id
    @borrower
  end

  def check_in_book(book)
    @book
  end

  def available_books
  end

  def borrowed_books
  end
=end
end
