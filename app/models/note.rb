class Note < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  scope :sorted, lambda { order('created_at DESC') }

  def preview
    if self.content.length > 100
      self.content.slice(0..100) << '...(read the rest)'
    else
      self.content
    end
  end
end
