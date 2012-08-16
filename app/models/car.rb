class Car
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :url, type: String
  field :title, type: String
  field :price, type: String
  field :baseinfo, type: Hash

  scope :sanlves, where(:sanlves.ne => nil).desc(:sales_count)
  
  has_one :cache_html
  embeds_many  :parameters
end

class Parameter
  include Mongoid::Document
  #include Mongoid::Timestamps
  
  field :name, :type => String
  field :value, :type => String


  embedded_in :car
end


class CacheHtml
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, :type => String
  field :url,  :type => String
  field :value, :type => String

  belongs_to :car
end

