class Student

  def initialize(student_name, cohort_name)
    @student_name = student_name
    @cohort_name = cohort_name
  end

  def student_name
    return @student_name
  end

  def cohort_name
    return @cohort_name
  end

  def set_student_name(name)
      @student_name = name
  end

  def set_cohort_name(name)
      @cohort_name = name
  end

  def i_can_talk
    return "I can talk"
  end

  def favourite_language(language)
    language_cap = language.capitalize
    return "I love #{language_cap}"
  end

end
