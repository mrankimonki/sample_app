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
end
