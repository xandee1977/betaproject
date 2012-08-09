# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Question
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with Question.
  # enable :sync

  #Properties
  property :subject_id, :text
  property :theme_id, :text
  property :sentence, :text
  property :option_one, :text
  property :option_two, :text
  property :option_three, :text
  property :option_four, :text
  property :option_five, :text
  property :answer, :text
  property :explanation, :text
  property :time_control, :datetime

  
  def correct_letter
    list = {
      :one    => "a",
      :two    => "b",
      :three  => "c",
      :four   => "d",
      :five   => "e",
    }
    return list[answer.to_sym]
  end
end
