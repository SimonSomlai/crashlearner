class Pic < ApplicationRecord
  acts_as_votable

  has_attached_file :image, styles: { small: '150x150>', med: '250x250>', large: '1000x400>' }
  validates_attachment_content_type :image, content_type: ['image/jpg', 'image/png', 'image/jpeg']

  belongs_to :user
end
