class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :favorites, dependent: :destroy


  has_many :friend_requests_where_sender, :class_name => "FriendRequest", :foreign_key => "sender_id"

  has_many :friends_where_sender, :through => :friend_requests_where_sender, :source => :receiver


  has_many :friend_requests_where_receiver, :class_name => "FriendRequest", :foreign_key => "receiver_id"

  has_many :friends_where_receiver, :through => :friend_requests_where_receiver, :source => :sender


  has_many :timeline_favorites, :through => :friends_where_sender, :source => :favorites

  after_create :follow_myself

  def follow_myself
    friend_request = FriendRequest.new
    friend_request.sender_id = self.id
    friend_request.receiver_id = self.id
    friend_request.save
  end
end
