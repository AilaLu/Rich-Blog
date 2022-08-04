 
class User < ApplicationRecord
  has_many :articles
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum:3, maximum:6}, confirmation: true
  before_create :encrypt_password 
  
def self.login(user_params)
  email = user_params
end

def own?(article)
  article.user == self
end


  private
  def encrypt_password
    self.password = Digest::SHA1.hexdigest(self.password)
  end
  #加密密碼

end
