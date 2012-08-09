# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Theme
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with Theme.
  # enable :sync

  #Properties
  property :title, :text
  property :description, :text
  property :category, :text
  property :time_control, :datetime
end
