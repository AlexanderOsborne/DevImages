class Image < ApplicationRecord
  validates_presence_of :title,
                        :artist,
                        :user_id
  belongs_to :user
end
