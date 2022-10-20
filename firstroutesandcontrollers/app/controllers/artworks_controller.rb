class ArtworksController < ApplicationController
    def index
        @artworks = Artwork.all
        render json: @artworks

    end

    def create
        # debugger
        artwork = Artwork.new(artwork_params)
        # replace the `user_attributes_here` with the actual attribute keys
        artwork.save!
        render json: artwork
    end

    def show
        render json: Artwork.find(params[:id])
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        redirect_to artworks_url
    end

    def update
        @artwork = Artwork.find(params[:id])

        if @artwork.update(artwork_params)
            redirect_to artworks_url(@artwork)
        else 
            render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end
