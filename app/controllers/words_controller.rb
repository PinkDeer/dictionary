class WordsController < ApplicationController

	def index
    	@words = Word.where(user_id: current_user)
  	end

	def show
		@word = Word.find(params[:id])
	end

	def new
		@word = current_user.words.build
 	end

	def create
		@word = current_user.words.build(word_params)
		if @word.save
			redirect_to @word
		else
			render 'new'
		end
	end

 	def update
		@word = Word.find(params[:id])
		if @word.update(word_params)
			redirect_to @word
		else
			render 'edit'
		end
	end

	def edit
		@word = Word.find(params[:id])
	end

	def destroy
	@word = Word.find(params[:id])
		@word.destroy
		redirect_to root_path
	end

	private

	def word_params
		params.require(:word).permit(:title, :translation )
	end

end
