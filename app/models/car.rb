class Car < ApplicationRecord
	validates :introduction, presence: true
	validates :image, presence: true
	validates :manufacture_id, :numericality => { :greater_than => 2 }
	validates :car_model_id, :numericality => { :greater_than => 2 }

	belongs_to :user
	belongs_to :manufacture
	belongs_to :car_model
	belongs_to :car_year

	has_many :favorites, dependent: :destroy
	has_many :comments, dependent: :destroy

	def  favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end

	attachment :image
end
