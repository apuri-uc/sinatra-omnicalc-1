require "sinatra"
require "sinatra/reloader"

get("/") do
"Welcome to your sinatra app"
end

get("square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results)
end
