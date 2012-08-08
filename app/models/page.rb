class Page
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :permalink, type: String
  field :keywords, type: String
  field :description, type: String
  field :body, type: String
  field :body_html, type: String
  field :view_code, type: String

#  scope :notice, where(:title => "")
end
