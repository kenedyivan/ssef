class User < ActiveRecord::Base
  has_many :articles


=begin
  validates_presence_of :username
  validates_length_of :username, :maximum => 6
  validates_presence_of :email
  validates_uniqueness_of :username
=end

end
