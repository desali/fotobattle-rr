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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
