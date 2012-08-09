# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Subject
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with Subject.
  # enable :sync

  #Properties
  property :theme_id, :text
  property :title, :text
  property :description, :text
  property :time_control, :datetime

end
