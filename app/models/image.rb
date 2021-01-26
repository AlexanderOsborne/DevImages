class Image < ApplicationRecord
  validates_presence_of :artist,
                        :small,
                        :full
  belongs_to :user
end
