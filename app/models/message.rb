class Message < ApplicationRecord
  has_paper_trail 
  belongs_to :contact_id
end
