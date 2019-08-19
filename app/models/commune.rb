class Commune < ApplicationRecord
  belongs_to :intercommunality
  has_many :streets

  validates  :name, :code_insee, presence: :true
  validates  :code_insee, presence: :true, format: { with: /\A\d{5}\z/ }
end
