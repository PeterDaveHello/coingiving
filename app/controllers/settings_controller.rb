class SettingsController < ApplicationController

  before_filter :authenticate_sponsor!

  def profile
  end

  def update_profile
    if current_sponsor.update sponsor_params
      redirect_to :back, notice: 'Profile updated'
    else
      render :profile
    end
  end

    private

  def sponsor_params
    params.require(:sponsor).permit(:name, :url, :location)
  end
end
