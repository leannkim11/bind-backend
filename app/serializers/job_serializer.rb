class JobSerializer < ActiveModel::Serializer
  attributes :id, :position, :city, :state, :industry, :description, :my_position, :company
  belongs_to :user
  has_many :bookmarks
end
