class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_paper_trail 
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  enum kind: {msn: 0, wpp: 1, blip: 2}
end
