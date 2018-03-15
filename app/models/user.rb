class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :interactions_one, class_name: "Interaction", foreign_key: :user_one_id, dependent: :destroy
  has_many :interactions_two, class_name: "Interaction", foreign_key: :user_two_id, dependent: :destroy

  has_many :matches_one, class_name: "Match", foreign_key: :user_one_id, dependent: :destroy
  has_many :matches_two, class_name: "Match", foreign_key: :user_two_id, dependent: :destroy
end
