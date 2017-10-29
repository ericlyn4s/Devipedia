class Wiki < ApplicationRecord
  belongs_to :user
  has_many :wikis, dependent: :destroy
end
