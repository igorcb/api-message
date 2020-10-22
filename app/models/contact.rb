class Contact < ApplicationRecord
  validates :name, :phone, :email, presence: true
  validates :email, uniqueness: {case_sensitive: false}
  
  has_paper_trail 

  
end
