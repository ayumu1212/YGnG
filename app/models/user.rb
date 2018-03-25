class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         belongs_to :area
         has_many :events

  mount_uploader :image, ImagesUploader

  enum sex: {男性:1, 女性:2, 秘密:3}
end
