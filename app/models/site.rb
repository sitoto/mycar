class Site
  include Mongoid::Document
  field :name, type: String
  field :url, type: String
  field :tags, type: Array
  field :note, type: String
  field :category, type: String
  field :status, type: String
end
