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
  
  erb(:payment_results)
end


get("/random/new") do
  erb(:new_random)
end

get("/random/results") do
  @min_random = params.fetch("min_number").to_f

  @max_random = params.fetch("max_number").to_f

  erb(:random_results)
end
