require 'has_many_friends/helper'

module HasManyFriends
end

ActiveRecord::Base.send :include, HasManyFriends::Helper
