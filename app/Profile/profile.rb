# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Profile
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with Profile.
  # enable :sync

  #Properties  
  property :user_id, :text
  property :firstname, :text
  property :lastname, :text
  property :biography, :text
  property :avatar, :text
  property :time_control, :datetime
end
