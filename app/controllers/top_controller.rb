class TopController < ApplicationController
  def index
  end
  
  def show
  end

  def guest_sign_in
    user = User.find_or_create_by!(email: 'guest@guest.com') do |user|
      user.name = "ゲスト"
      user.password = SecureRandom.urlsafe_base64
      user.undergraduate = "経済学部"
      user.grade = 1
    end
    sign_in user
    flash[:notice] = 'ゲストユーザーとしてログインしました。'
    redirect_to users_path
  end

end
