require "sinatra"
require "sinatra/reloader"

get("/") do
"Welcome to your sinatra app"
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_square_root)
end

get("/square_root/results") do
  @the_num = params.fetch("input_number").to_f

  @the_result = @the_num ** 0.5
  erb(:square_root_result)
end

get("/payment/new") do
  erb(:new_payment)
end

get("/payment/results") do
  @apr = params.fetch("apr_number").to_f
  @monthly_rate = @apr / 12.0 / 100.0 # APR should be divided by 100 to convert percentage to decimal
  
  @years = params.fetch("years_number").to_f
  @n = @years * 12.0
  @principal = params.fetch("principal_number").to_f

# Correct formula for monthly payment
@payment = @principal * (@monthly_rate * (1 + @monthly_rate) ** @n) / ((1 + @monthly_rate) ** @n - 1)

@final_apr = @apr.to_fs(:percentage, {:precision => 4})
@principal_currency = @principal.to_fs(:currency, {:precision => 2})
@final_payment = @payment.to_fs(:currency, {:precision => 2})
  erb(:payment_results)
end


get("/random/new") do
  erb(:new_random)
end

get("/random/results") do
  @min_random = params.fetch("users_number").to_f

  @max_random = params.fetch("users_number").to_f

  erb(:random_results)
end
