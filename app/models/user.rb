class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  before_create :set_default_role

  has_many :wikis, dependent: :destroy
  has_many :collaborators, dependent: :destroy
  has_many :shared_wikis, through: :collaborators, source: :wiki

  before_save {if self.role == :standard then :amount end}

  enum role: [:standard, :premium, :admin]

  enum amount: [15.00]

  def set_default_role
    self.role = :standard
  end

  def collaborator?(wiki)
    self.collaborators.where(wiki: wiki).present?
  end


end
