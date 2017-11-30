class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  before_create :set_default_role

  before_save {if self.role == :standard then :amount end}

  enum role: [:standard, :premium]

  enum amount: [15.00]

  def set_default_role
    self.role = :standard
  end

end
