class ChoosController < ApplicationController

	def index
		@choos = Choochoo.all
		@choo = Choochoo.new
	end

	def new
		@choo = Choochoo.new
	end

	def create
		Choochoo.create(:name => params[:name], :frequency => params[:frequency])
		flash[:success] = "Way to go, new choo created!"
		redirect_to "http://localhost:3000/choos"
	end
	
	def show
		@choo = Choochoo.find_by_id(params[:id])
	end
	
	def edit
		@choo = Choochoo.find_by_id(params[:id])
	end
	
	def update
		@choo = Choochoo.find_by_id(params[:id])
		@choo.name = params[:name]
		@choo.frequency = params[:frequency]
		@choo.save
		flash[:success] = "Way to go, you made #{@choo.name} better!"
		redirect_to "http://localhost:3000/choos/#{@choo.id}"
	end
	
	def destroy
		@choo = Choochoo.find_by_id(params[:id])
		@choo.destroy
		flash[:success] = "Nice job, you destroyed a train."
		redirect_to "http://localhost:3000/choos"
	end
	
end
