json.extract! fulfillment, :id, :fulfilled_at, :kind, :line_item_id, :created_at, :updated_at
json.url fulfillment_url(fulfillment, format: :json)
