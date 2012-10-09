class CarSerial
  include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :pic, type: String
  field :firstyear, type: String
  field :lastyear, type: String
  field :url, type: String
  field :code, type: String
  field :baoyangzhouqi, type: String
  field :baoyangjiage, type: String
  field :baoyangurl, type: String

  belongs_to :car_maker,  :inverse_of => :car_serials
end
