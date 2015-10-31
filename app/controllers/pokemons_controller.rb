class PokemonsController < ApplicationController
	def index
		@pokemons = Pokemon.all
	end

	def new
		@pokemons = Pokemon.new
	end

	def create
		@pokemons = Pokemon.create params.require(:pokemon).permit(:name)
		@pokemons.trainer_id = current_trainer.id
		#redirect_to trainer_path id: @pokemons.trainer_id
		if_saved = @pokemons.save
		if if_saved
			redirect_to trainer_path(current_trainer)
		else
			flash[:notice] = "Please fix your name!"
			render "new"
		end
	end

	def capture
		@pokemons = Pokemon.find(params[:id])
		@pokemons.trainer_id = current_trainer.id
		@pokemons.save
		redirect_to root_path
	end

	def damage
		@pokemons = Pokemon.find(params[:id])
		@pokemons.health = @pokemons.health - 10
		if @pokemons.health <= 10
			@pokemons.destroy
		end
		@pokemons.save
		redirect_to trainer_path id: @pokemons.trainer_id
	end

end