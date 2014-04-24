
class Book

  def title
    @title
  end

  def author
    @author
  end

  def id
    @id
  end

  def status
    @status
  end

  def initialize(title, author, id=nil, status='available')
    @title = title
    @author = author
    @id = id
    @status = status
  end

  #def status
   #   @status = 'available'
  # end

end



class Borrower
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Library
  attr_accessor :books

  def initialize(name)
    @books = []
    def register_new_book(title, author)
      @title = title
      @author = author
      @books << {title => author}
    end
  end

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
end
