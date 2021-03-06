class ItemHistory < ActiveRecord::Base
  belongs_to :item, :foreign_key => "item_id"
  belongs_to :user, :foreign_key => "user_id"
  belongs_to :old_area, class_name: "Area", :foreign_key => "old_area_id"
  belongs_to :new_area, class_name: "Area", :foreign_key => "new_area_id"

  def record(user, item, new_value)
    self.user = user
    self.item = item
    self.new_area = new_value

    self.save
  end

end
