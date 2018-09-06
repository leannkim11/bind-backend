class User < ApplicationRecord
  has_secure_password

  has_many :jobs
  has_many :bookmarks
  has_many :bookmarked_jobs, through: :bookmarks, source: :job

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  
  ###########ACTIVE STORAGE######
  # has_one_attached :profile_picture
end
