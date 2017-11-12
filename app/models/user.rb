class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  before_save {self.role ||= :standard}

  before_save {if self.role == :standard then :amount end}

  enum role: [:standard, :premium, :admin]

  enum amount: [15.00]

end
