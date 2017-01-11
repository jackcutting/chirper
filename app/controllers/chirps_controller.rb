# Controller for Chirps (like posts)
class ChirpsController < ApplicationController
  def index
    @chirp = Chirp.new
    @chirps = Chirp.all.order(created_at: :desc)
  end

  def create
    # render plain: params[:chirp].inspect
    @chirps = Chirp.all.order(created_at: :desc)

    @chirp = Chirp.new(chirp_params)

    if @chirp.save
      flash[:alert] = 'success'
      flash[:message] = 'Chirp added to timeline!'

      redirect_to root_path
    else
      render 'index'
    end
  end

  def show
    @chirp = Chirp.find(params[:id])
  end

  def destroy
    @chirp = Chirp.find(params[:id])
    @chirp.destroy

    flash[:alert] = 'warning'
    flash[:message] = 'Chirp removed from timeline!'

    redirect_to root_path
  end

  private

  def chirp_params
    params.require(:chirp).permit(:body)
  end
end
