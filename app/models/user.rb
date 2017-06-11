class User < ApplicationRecord
  validates :user_name, presence: true, length: { minimum: 4, maximum: 16 }  
  has_many :groups

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :groups, dependent: :destroy  

end
