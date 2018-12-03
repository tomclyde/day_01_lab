require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < Minitest::Test

  def setup
    @library = Library.new([{
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
                    }
    },
    {
    title: "the hobbit",
    rental_details: {
     student_name: "Tom",
     date: "07/12/16"
                    }
    }])
  end

  def test_books
    assert_equal([{
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
                    }
    },
    {
    title: "the hobbit",
    rental_details: {
     student_name: "Tom",
     date: "07/12/16"
                    }
    }], @library.books)
  end

  def test_book_info
    assert_equal({
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
                    }
    }, @library.book_info("lord_of_the_rings"))
  end

  def test_book_rental_info
    assert_equal({
     student_name: "Jeff",
     date: "01/12/16"}, @library.book_rental_info("lord_of_the_rings"))
  end

  def test_add_book
    @library.add_book("trainspotting")
    new_book_info = @library.book_info("trainspotting")
    assert_equal("trainspotting", new_book_info[:title])
  end

  def test_change_rental_dets
    @library.change_rental_dets("lord_of_the_rings", "Peter", "31/12/16")
    assert_equal({
     student_name: "Peter",
     date: "31/12/16"}, @library.book_rental_info("lord_of_the_rings"))
   end

end
