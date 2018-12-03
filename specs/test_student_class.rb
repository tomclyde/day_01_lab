require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class')

class TestStudent < Minitest::Test


  def setup
    @student = Student.new("Chris", "SW1")
    @student2 = Student.new("Stephen", "SW1")
    @student3 = Student.new("Tom", "SW1")
  end

  def test_get_student_name
    assert_equal("Chris", @student.student_name)
  end

  def test_get_cohort_name
    assert_equal("SW1", @student.cohort_name)
  end

  def test_set_student_name
    @student.set_student_name("Conor")
    assert_equal("Conor", @student.student_name)
  end

  def test_set_cohort_name
    @student.set_cohort_name("E27")
    assert_equal("E27", @student.cohort_name)
  end

  def test_i_can_talk
    assert_equal("I can talk", @student.i_can_talk)
  end

  def test_favourite_language
    assert_equal("I love Ruby", @student.favourite_language("Ruby"))
  end

end
