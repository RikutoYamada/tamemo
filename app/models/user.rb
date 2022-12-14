class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :expense_categories, dependent: :destroy
  has_many :expenses, dependent: :destroy
end
