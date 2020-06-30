class Contact < ApplicationRecord
    validates :first_name, presence: true, length: { in: 3..50 }, format: { with:  /\A[a-zA-Z0-9 ]+\z/ }
    validates :last_name, presence: true, length: { in: 3..50 }, format: { with:  /\A[a-zA-Z0-9 ]+\z/ }
    validates :phone, presence: true, length: { in: 9..11 }, numericality: { only_integer: true }
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, length: { in: 6..50 }, presence: true
    validates :message, presence: true, length: { in: 6..4000 }
end
