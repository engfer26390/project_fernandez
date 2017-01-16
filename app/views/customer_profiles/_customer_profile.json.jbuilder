json.extract! customer_profile, :id, :created_at, :updated_at
json.url customer_profile_url(customer_profile, format: :json)