class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #validates :username, inclusion: { in: %w(ali hamza khushi kk), message: "must be either ali or hamza" }
  has_many :project_users,dependent: :destroy
  has_many :projects,through: :project_users,dependent: :destroy    
  validates :username, presence: true 
  validates :user_type, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
   def full_name
     "#{username} - #{user_type}"
   end
 
end
