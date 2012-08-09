# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class UserAnswer
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with UserAnswer.
  # enable :sync

  #Properties
  property :user_id, :text
  property :question_id, :integer
  property :answer, :text
  property :time_control, :datetime
end
