class DecksController < ApplicationController
	def index
		@decks = Deck.all
	end

	def new
		@deck = Deck.new
	end

	def create
		@deck = Deck.new(params[:deck])
		@deck.save
		redirect_to "/decks"
	end
end 