require 'chinese_pinyin'
class Brand
  include Mongoid::Document
  field :name, type: String
  field :name_pinyin, type: String
  field :tip, type: String
  field :pic, type: String
  field :pic_url, type: String
  field :url, type: String
  field :code, type: String

  embeds_many :makers

  scope :qqcar, where(tip: "qqcar").asc(:name_pinyin)

  before_save :update_name_pinyin

protected
  def update_name_pinyin
    self.name_pinyin = Pinyin.t(self.name, '').downcase.to_s 
  end
end
