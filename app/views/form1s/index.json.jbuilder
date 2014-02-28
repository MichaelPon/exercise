json.array!(@form1s) do |form1|
  json.extract! form1, :id, :name, :email, :mobileno, :message
  json.url form1_url(form1, format: :json)
end
