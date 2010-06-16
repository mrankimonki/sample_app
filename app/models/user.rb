# == Schema Info
#
# Table name: users
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime

class User < ActiveRecord::Base
      
      attr_accessible :name, :email

      EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

      validates_presence_of :name
      validates_length_of   :name, :maximum => 50
      validates_format_of   :email, :with => EmailRegex
      validates_uniqueness_of :email, :case_sensitive => false

end
