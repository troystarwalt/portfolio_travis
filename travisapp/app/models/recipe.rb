class Recipe < ActiveRecord::Base
  belongs_to :admin
  validates :admin_id, presence: true
  # Should change the content length.
  validates :description, presence: true, length: { maximum: 800 }
  validates :title, presence: true, length: { maximum: 140 }
  default_scope -> { order(created_at: :desc) }
  delegate :username, :email, to: :admin, prefix: true
end
