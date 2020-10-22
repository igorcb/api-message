json.id @contact.id
json.name @contact.name
json.email @contact.email
json.phone @contact.phone
json.address @contact.address
json.neighborhood @contact.neighborhood
json.city @contact.city
json.zip_code @contact.zip_code

json.created_at @contact.created_at.strftime("%d/%m/%Y")
json.updated_at @contact.updated_at.strftime("%d/%m/%Y")

json.messages @contact.messages do |message|
  json.kind message.kind
  json.content message.content
  json.created_at message.created_at.strftime("%d/%m/%Y")
  json.updated_at message.updated_at.strftime("%d/%m/%Y")
end