class User < ActiveRecord::Base
  has_many :transactions
  has_many :debts, through: :transactions
end
