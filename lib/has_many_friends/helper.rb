require 'active_support/concern'

%w{ has_many_friends }.each do |f|
  require "#{File.dirname(__FILE__)}/#{f}"
end

module HasManyFriends
  module Helper
    extend ActiveSupport::Concern

    module ClassMethods
      ##
      def has_many_friends(opts = nil)
        include HasManyFriends::UserExtensions::InstanceMethods
      end
    end
  end
end
