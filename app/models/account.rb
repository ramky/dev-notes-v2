class Account < ActiveRecord::Base
  has_secure_password
  validates :email_address, presence: true, uniqueness: true
  # validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }

  has_many :topics

  # TODO: clean this up - not needed
  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.provider = auth.provider
  #     user.provider = auth.provider
  #     user.uid      = auth.uid
  #     user.name     = auth.info.name
  #     # Don't want everyone in the world to use my app
  #     # Control access through the database
  #     user_name = user.name.try(:downcase) || ''
  #     return if AuthenWhitelist.not_authorized?(user_name)

  #     user.save
  #   end
  # end
end