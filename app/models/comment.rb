class Comment < ActiveRecord::Base
  MAX_BODY_LENGTH = 30
  belongs_to :post
  before_save :truncate_body

  private
  def truncate_body max_length=MAX_BODY_LENGTH
    self.body = body[0..(MAX_BODY_LENGTH - 1)] if body.length > MAX_BODY_LENGTH
  end
end
