# /dice.rb

require "sinatra"
require "puma"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
   erb(:elephant)
 end

 def homepage_string
   homepage = "<br><br><br><a href = \"/\">Back to home.</a>"

 end

get("/dice/2/6") do
   
   first_die = rand(1..6)
   second_die = rand(1..6)
   die_sum = first_die + second_die
   @outcome = "<b>First roll:</b> #{first_die}<br><b>Second roll:</b> #{second_die}<br><b>Total:</b> #{die_sum}"

   erb(:two_six)

 end

 get("/dice/2/10") do
   first_die = rand(1..10)
   second_die = rand(1..10)
   die_sum = first_die + second_die
   homepage = homepage_string
      
   @outcome = "<b>First roll:</b> #{first_die}<br><b>Second roll:</b> #{second_die}<br><b>Total:</b> #{die_sum}"

   erb(:two_ten)
 end

 get("/dice/1/20") do
   first_die = rand(1..20)
   second_die = rand(1..20)
   die_sum = first_die + second_die
   homepage = homepage_string
      
   @outcome = "<b>First roll:</b> #{first_die}<br><b>Second roll:</b> #{second_die}<br><b>Total:</b> #{die_sum}"

   erb(:one_twenty)
 end

 get("/dice/5/4") do
   first_die = rand(1..4)
   second_die = rand(1..4)
   third_die = rand(1..4)
   fourth_die = rand(1..4)
   fifth_die = rand(1..4)
   die_sum = first_die + second_die + third_die + fourth_die + fifth_die
   homepage = homepage_string
      
   @outcome = "<b>First roll:</b> #{first_die}<br><b>Second roll:</b> #{second_die}<br><b>Third roll:</b> #{third_die}<br><b>Fourth roll:</b> #{fourth_die}<br><b>Fifth roll:</b> #{fifth_die}<br><b>Total:</b> #{die_sum}"

   erb(:five_four)
 end
