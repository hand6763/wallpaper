class Estimation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :ceilling
  belongs_to :grade

  with_options presence: true do
    validates :wide, :height, format: { with: /\A[0-9]\z/, message: 'を半角数字で入力してください' }
  end

  validates :ceilling_id, :grade_id, numericality: { other_than: 1, message: "を選択してください" }




    
end
