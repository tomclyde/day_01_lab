class Library

#  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def books
    return  @books
  end

  def book_info(book_title)
    for book in @books
      if book[:title] == book_title
        return book
      end
    end
  end

  def book_rental_info(book_title)
    for book in @books
      if book[:title] == book_title
        return book[:rental_details]
      end
    end
  end

  def add_book(book_title)
    @books << {:title => book_title,:rental_details => {}}
  end

  def change_rental_dets(title, name, return_date)
    for book in @books
      if book[:title] == title
        book[:rental_details] = {:student_name => name, :date => return_date}
      end
    end
  end

end
