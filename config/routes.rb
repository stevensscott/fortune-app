Rails.application.routes.draw do
  #routes here
  get "/fortune" , controller:"my_examples", action: "get_fortune"
  get "/lotto" , controller:"my_examples", action: "get_lotto_numbers"
end
