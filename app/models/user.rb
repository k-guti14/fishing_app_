class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  
  mount_uploader :icon, ImageUploader

  def self.guest
    find_or_create_by!(name: "ゲストユーザー", email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
