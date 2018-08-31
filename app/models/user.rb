class User < ApplicationRecord
  has_secure_password
  has_many :jobs
  has_many :bookmarks
  has_many :bookmarked_jobs, through: :bookmarks, source: :job
end