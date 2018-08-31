class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :jobs
  has_many :bookmarks
  has_many :bookmarked_jobs, through: :bookmarks, source: :job
end
