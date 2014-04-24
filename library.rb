
class Book

  attr_reader :title
  attr_reader :author
  attr_reader :id
  attr_reader :status

  def initialize(title, author)
    @title = title
    @author = author
    @id = nil
    @status = 'available'
  end

  def check_out
    @status = 'checked_out'
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

  def initialize
    @books = []
  end

  def count
    @books.length
  end

  def register_new_book(book)
    @books << [book]
  end
=begin
  def books

  end

  def add_book(title, author)
  end

  def check_out_book(book_id, borrower)
  end

  def check_in_book(book)
  end

  def available_books
  end

  def borrowed_books
  end
=end
end
