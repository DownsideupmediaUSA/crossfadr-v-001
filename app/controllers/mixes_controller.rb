class MixesController < ApplicationController
 before_action :set_mix, only: [:update, :show, :shared_mix, :liked_mix, :destroy]


  def api_index
   @mixes = Mix.all
   render json: @mixes
  end

  def index
    mixes = Mix.all
    render json: mixes
  end

  def new
    @mixes = Mix.new
  end

  def show


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

     if mix.update(mix_params)
         render json: { status: 'ok' }
     else
         render json:
             { errors: mix.errors.full_messages },
             status: :unprocessable_entity
     end
   end

   def shared_mix

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

  private

    def set_mix
      mix = Mix.find_by_id(params[:id])
    end

    def mix_params
      params.require(:mix).permit(:title)
    end

end
