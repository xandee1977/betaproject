# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class User
  include Rhom::FixedSchema

  # Uncomment the following line to enable sync with User.
  # enable :sync

  #Properties
  property :username, :text
  property :password, :text
  property :email, :text
  property :time_control, :datetime
end
