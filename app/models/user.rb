class User < ApplicationRecord
  private
def confirmation_token
      if self.confirm_token.blank?
          self.confirm_token = SecureRandom.urlsafe_base64.to_s
      end
    end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         def email_activate
             self.email_confirmed = true
             self.confirm_token = nil
             save!(:validate => false)
           end

         private
         def confirmation_token
               if self.confirm_token.blank?
                   self.confirm_token = SecureRandom.urlsafe_base64.to_s
               end
             end
end
