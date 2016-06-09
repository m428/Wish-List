class Item < ActiveRecord::Base
  belongs_to :user


  before_save :default_values
   def default_values
     self.cost ||= 0
   end
  # scope :user_id, -> (user_id) { where user_id: user_id}

  def self.search(search)
      where('title ILIKE ? OR category ILIKE ? OR seller ILIKE ? OR note ILIKE ? OR cast(cost as text) ILIKE?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
