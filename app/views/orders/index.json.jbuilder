json.array!(@orders) do |order|
  json.extract! order, :id, :status, :payment, :address, :poblation, :last_name, :first_name
  json.url order_url(order, format: :json)
end
