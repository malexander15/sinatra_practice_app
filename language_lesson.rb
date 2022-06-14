class LanguageLesson
  attr_accessor :language, :lesson_name, :questions
  def initialize(language, lesson_name)
    @language = language
    @lesson_name = lesson_name
    @questions = YAML.load_file("#{language}/#{lesson_name}_questions.yml").with_indifferent_access
  end
end
