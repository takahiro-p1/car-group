class UsersController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]
  
  def show
    @user = User.find(params[:id])
  end

  def index
    @carlists = Carlist.all
    @already_not_swiped = Carlist.joins(:reaction)

    @user = User.find(current_user.id)
  end

  private
  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
  end
end
