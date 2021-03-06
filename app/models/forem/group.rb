module Forem
  class Group < ActiveRecord::Base
    self.table_name = "forem_groups"

    validates :name, :presence => true

    has_many :memberships
    has_many :members, :through => :memberships, :class_name => Forem.user_class.to_s

    attr_accessible :name

    def to_s
      name
    end
  end
end
