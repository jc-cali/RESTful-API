class IdeaController < HomeController

  get '/' do
		# get all ideas
		#binding.pry
		Idea.all.to_json
	end

	get '/:id' do
		# get an idea by id
		Idea.find(params[:id]).to_json
	end

	post '/' do
		# create an idea
		Idea.create(:content => params[:content]).to_json
	end

	patch '/:id' do
		@idea = Idea.find(params[:id])
		@idea.content = params[:content]
		@idea.save
		# update an idea by id
	end

	delete '/:id' do
		# delete by id
		Idea.find(params[:id]).destroy.to_json
	end

end
