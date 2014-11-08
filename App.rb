require 'green_shoes'

Shoes.app do
	flow :width => 1.0 , :height => 1.0 do
			

			stack :width => 1.0 , :height => 60 do
				background blue
				para " Welcome to Project Track" , :align =>'center' , margin: 15

			end

			stack :width => 1.0 , :height => 60 do
				flow do
					
					@c = button 'New project'
					@c.click do
						@body1.append do
							para "Project Name"
							@p = edit_line
							para "Project Description"
							@d = edit_line
							@save = button "Save"

							@save.click do 
								@projects = []
								@projects << @p.text
								@body1.clear { para "project saved"}
							end
						end
					end

					@p = button 'projects'
					@m = button 'Manage projects'
				end
			end

			@body1 = stack :width => 1.0 , :height => 500 do 

			end

			

			@L=stack :width => 1.0 , :height => 30 do
				background blue
				para " NerdsOnAPlane | Project Track 2014" , :align =>'center'
			end
		end
end