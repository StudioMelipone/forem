require 'friendly_id'

module Forem
  class Category < ActiveRecord::Base
    self.table_name = "forem_categories"
    extend FriendlyId
    friendly_id :name, :use => :slugged

    has_many :forums
    validates :name, :presence => true
    attr_accessible :name

    def to_s
      name
    end

  end
end
