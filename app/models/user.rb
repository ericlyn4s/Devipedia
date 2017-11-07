class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  before_create :set_default_role

  enum role: [:standard, :premium, :admin]

  def set_default_role
    logger.info("before_create")
    puts("before_create")
    self.role ||= :standard
  end

end
