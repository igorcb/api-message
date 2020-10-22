class Message < ApplicationRecord
  belongs_to :contact
  validates :contact_id, :content, :kind, presence: true

  enum kind: {msn: '0', wpp: '1', blip: '2', email: '3'}
end
