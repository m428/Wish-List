class Item < ActiveRecord::Base
  belongs_to :user


  # scope :user_id, -> (user_id) { where user_id: user_id}

  def self.search(search)
      where('title ILIKE ? OR category ILIKE ? OR seller ILIKE ? OR note ILIKE ? OR cast(cost as text) ILIKE?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
