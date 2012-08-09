# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class UserScore
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with UserScore.
  # enable :sync

  #Properties
  property :user_id, :text
  property :score, :integer
  property :time_control, :datetime
end
