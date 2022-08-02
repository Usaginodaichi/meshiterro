class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
  end

  def users_params
   params.require(:user).permit(:shop_name, :image, :caption)
  end
end
