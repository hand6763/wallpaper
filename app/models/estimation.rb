class Estimation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :wide
  belongs_to :ceilling
  belongs_to :grade

  validates :wide_id, :ceilling_id, :grade_id, numericality: { other_than: 1, message: "を選択してください" }


  def area_price
    if self.wide_id == 2
      30000
    elsif self.wide_id == 3
      50000
    elsif self.wide_id == 4
      80000
    elsif self.wide_id == 5
      150000
    end
  end

  def sum_price
    if self.ceilling_id == 2 && self.grade_id== 2
      area_price + ( area_price * 2 / 3 ) 
    elsif self.ceilling_id == 3 && self.grade_id== 2
      area_price
    elsif self.ceilling_id == 2 && self.grade_id== 3
      ( area_price * 1.5 ) + ( area_price * 2 / 3 )
    elsif self.ceilling_id == 3 && self.grade_id== 3
      ( area_price * 1.5 ) 
    end
  end
end
