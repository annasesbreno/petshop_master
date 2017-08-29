class User < ActiveRecord::Base
has_secure_password
<<<<<<< HEAD
=======
  
attr_accessible :email, :password, :password_confirmation
  
validates_uniqueness_of :email
>>>>>>> f980694385d9d3352bbf931e1d10dd44e80b92dc
end
