json.extract! receipt, :id, :picture, :amount, :reason, :date, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)
