class User < ApplicationRecord
  
  has_many :reactions
  has_many :chat_messages
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :undergraduate, presence: true

  validates :self_introduction, length: { maximum: 500 }

  enum grade: { grade1: 0, grade2: 1, grade3: 2,others: 3 }

  mount_uploader :profile_image, ProfileImageUploader


  def update_without_current_password(params, *options)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update(params, *options)
    clean_up_passwords
    result
  end
end
