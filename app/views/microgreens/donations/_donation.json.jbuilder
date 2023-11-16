json.extract! donation, :id, :amount, :donated_at, :kind, :created_at, :updated_at
json.url donation_url(donation, format: :json)
