class Customer < ApplicationRecord
  validates_uniqueness_of :mobilenumber
  validates :name, presence: true
  validates :mobilenumber,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 10 }
 validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "only allows valid emails" }
  belongs_to :age
  belongs_to :country
  has_many :tickets
end
