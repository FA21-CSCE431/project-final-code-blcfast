json.extract! receipt, :id, :picture, :amount, :reason, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)
