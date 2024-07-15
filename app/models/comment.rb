class Comment < ApplicationRecord
  include Visible
  has_one_attached :image#追加
  belongs_to :article
end