class Contact < ApplicationRecord
  validates :name, :phone, :email, presence: true
  validates :email, uniqueness: {case_sensitive: false}
  
  has_many :messages, class_name: "Message", foreign_key: "contact_id", dependent: :destroy

  has_paper_trail 

  
end
