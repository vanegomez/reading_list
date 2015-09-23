class Link < ActiveRecord::Base
  belongs_to :user
  validates :url, presence: true, :format => URI::regexp(%w(http https))

  enum status: %w(unread read)

  def unread
    where(status: 0)
  end

  def read
    where(status: 1)
  end
end
