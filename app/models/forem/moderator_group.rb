module Forem
  class ModeratorGroup < ActiveRecord::Base
    self.table_name = "forem_moderator_groups"
    belongs_to :forum, :inverse_of => :moderator_groups
    belongs_to :group

    attr_accessible :group_id
  end
end
