json.array!(@debts) do |debt|
  json.extract! debt, :id, :amount, :user_to, :user_from
  json.url debt_url(debt, format: :json)
end
