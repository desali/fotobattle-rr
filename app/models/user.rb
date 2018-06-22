# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  fullname        :string
#  email           :string
#  city            :string
#  birthdate       :date
#  gender          :boolean
#  status          :text
#  coins           :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ApplicationRecord
  before_save { username.downcase! }
  before_save { email.downcase! }
  has_secure_password

  validates :username, presence: true, length: { maximum: 16 }, uniqueness: { case_sensitive: false }
  validates :fullname, presence: true, length: { maximum: 32 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 64 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :city, presence: true
  validates :birthdate, presence: true
  validates :gender, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
