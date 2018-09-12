class UserSerializer < ActiveModel::Serializer
  attributes :name, :email
  has_many :jobs
  has_many :bookmarks
  has_many :bookmarked_jobs, through: :bookmarks, source: :job
  has_one :profile
end
