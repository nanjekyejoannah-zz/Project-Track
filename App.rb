require 'green_shoes'

Shoes.app(title: "Project Track" , with: 10.0 , height: 900) do 
	flow width:10.0 , height: 10.0 do
		background cyan

		stack do

			flow width: 10.0 , height: 1.0 do
				para "Welcome to Project Track project management tool." , margin: 40
			end

			flow width: 10.0 , height: 1.0 do
				%w(Projects createnewproject manageprojects) .each do |t|
					button t , margin: 10 , width: 3.0
				end

			end
		end
	end

end