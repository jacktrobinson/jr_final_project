class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, :password, :password_confirmation
  validates :name, presence: true, uniqueness: true
  has_secure_password
<<<<<<< HEAD
=======
  
  after_destroy :ensure_an_admin_remains
  
  private
  def ensure_an_admin_remains
    if User.count.zero?
      raise "Can't delete last user"
    end
  end
  
>>>>>>> 28ff64a86b612d698140c722ce570a5485db02e3
end
