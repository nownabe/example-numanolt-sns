class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  def self.find_for_google(auth)
    where(email: auth.info.email).first ||
      create(
        name: auth.info.name,
        email: auth.info.email,
        token: auth.credentials.token,
        uid: auth.uid,
        provider: auth.provider,
        password: Devise.friendly_token
      )
  end

  has_many :posts
end
