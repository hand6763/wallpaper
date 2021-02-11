class Estimation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :wide
  belongs_to :ceilling
  belongs_to :grade

  validates :wide_id, :ceilling_id, :grade_id, numericality: { other_than: 1, message: "を選択してください" }
end