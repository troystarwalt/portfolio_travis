class Recipe < ActiveRecord::Base
  belongs_to :admin

  delegate :username, :email, to: :admin, prefix: true
end
