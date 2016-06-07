class Item < ActiveRecord::Base
  belongs_to :user

  def self.search(search)
      where('title ILIKE ? OR category ILIKE ? OR seller ILIKE ? OR note ILIKE ? OR cast(cost as text) ILIKE?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
