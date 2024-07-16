class Article < ApplicationRecord
    include Visible
  
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    has_one_attached :image#追加

    def self.search(query)
      where("LOWER(title) LIKE ? OR LOWER(body) LIKE ?", "%#{query.downcase}%", "%#{query.downcase}%")
    end

  end
  