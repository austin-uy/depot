class Product < ApplicationRecord
  has_many :line_items
  has_one :store
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true
  has_attached_file :image_url, styles: { :medium => "200x200>" }, default_url: "/assets/missing.png"
  validates_attachment_content_type :image_url, content_type: /\Aimage\/.*\Z/
  attr_accessor :image_url_file_name
  # validates :image_url, allow_blank: true, format: {
  #   with: %r{\.(gif|jpg|png)\Z}i,
  #   message: 'must be a URL for GIF, JPG or PNG image.'
  # }

  private
  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
