class MixesController < ApplicationController
 before_action: :set_mix, only: [:update]

  def index
    mixes = Mix.all
    render json: mixes
  end

  def create
        mix = current_user.mixes.build(mix_params)
        if mix.save
            render json: { status: 'ok' }
        else
            render json:
                { errors: mix.errors.full_messages },
                status: :unprocessable_entity
        end
    end

  def update
     mix = Mix.find_by_id(params[:id])
     if mix.update(mix_params)
         render json: { status: 'ok' }
     else
         render json:
             { errors: mix.errors.full_messages },
             status: :unprocessable_entity
     end
   end

   def shared_mix
        mix = Mix.find_by_id(params[:id])
        mix.shared_mix.build(user_id: current_user.id)
        if mix.save
            render json: { status: 'ok' }
        else
            render json:
                { errors: mix.errors.full_messages },
                status: :unprocessable_entity
        end
    end

   def liked_mix
        mix = Mix.find_by_id(params[:id])
        mix.liked_mix.build(user_id: current_user.id)
        if mix.save
            render json: { status: 'ok' }
        else
            render json:
                { errors: mix.errors.full_messages },
                status: :unprocessable_entity
        end
    end
    def destroy
        mix = Mix.find_by_id(params[:id])
        if mix.user == current_user.id
            SharedMix.where("mix_id = ?", mix.id).each { |t| t.destroy }
            LikedTweet.where("mix_id = ?", mix.id).each { |t| t.destroy }
            if mix.destroy
                render json: { status: 'ok' }
            else
                render json:
                    { errors: mix.errors.full_messages },
                    status: :unprocessable_entity
            end
        end
    end



end
