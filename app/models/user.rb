class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
    :recoverable, :rememberable, :trackable, :omniauthable,:validatable,
    :omniauth_providers => [:twitter]

  has_many :identities

  # validates_presence_of :username

  def twitter
    identities.where( :provider => "twitter" ).first
  end

  def twitter_client
    @twitter_client ||= Twitter.client( access_token: twitter.accesstoken )
  end

  def self.from_omniauth(identity)
    user=self.new
    user.name = identity.name # assuming the user model has a name
    user.username = identity.name.gsub(" ","") # assuming the user model has a name
    user.email = identity.email || "#{user.username}@example.com"
    user.password = Devise.friendly_token[0,20]
    user.skip_confirmation!
    user.save(validate: false)
    return user
  end
end
