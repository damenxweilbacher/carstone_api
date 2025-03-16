class User < ApplicationRecord
  has_secure_password

  validates :role, inclusion: { in: %w[user admin] }

  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end
  validates :email, presence: true, uniqueness: true
end
