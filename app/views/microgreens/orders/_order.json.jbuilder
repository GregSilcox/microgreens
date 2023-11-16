json.extract! order, :id, :payment_id, :user_id, :state, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
