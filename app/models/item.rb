class Item < ApplicationRecord
  belongs_to                    :user,       optional: true
  belongs_to                    :category
  belongs_to                    :item_payment,optional: true
  belongs_to :user, optional: true
  belongs_to :category, optional: true
  has_many :brands
  accepts_nested_attributes_for :brands, allow_destroy: true
  has_many :shippings
  accepts_nested_attributes_for :shippings, allow_destroy: true
  has_many :item_images
  accepts_nested_attributes_for :item_images, allow_destroy: true
  has_many :comments
  belongs_to                    :saler,       optional: true
  belongs_to                    :buyer,       optional: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status
  belongs_to :prefecture

  validates :item_name, presence: true
  validates :price, presence: true
  validates :content, presence: true
  validates :category_id, presence: true
  validates :user_id, presence: true
  validates :status_id, presence: true



end
