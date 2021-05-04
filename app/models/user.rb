class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :cosme, dependent: :destroy
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = "guestguest"
      user.name = "ゲスト"
    end
  end
  validates :name, uniqueness: true
  validates :name,    length: { in: 2..20 }
  enum gender: {男性: 0, 女性: 1}
  enum job: {会社員: 0, 美容関係者: 1, フリーター・パート: 4, 大学生: 5, 高校生: 6, 中学生・小学生: 7, その他: 8}
end
