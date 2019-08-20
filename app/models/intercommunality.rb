class Intercommunality < ApplicationRecord
  has_many :communes

  validates  :name, :siren, presence: :true
  validates  :siren, presence: :true, uniqueness: { case_sensitive: false },
             format: { with: /\A\d{9}\z/ }

  validates  :form, inclusion: { in: %w(ca cu cc met) }

  before_save :slug 

  def communes_hash
    c_h = {}
    self.communes.each { |com|  c_h[com.code_insee] = com.name }
    c_h
  end  

  def slug
    self.slug = self.name.gsub(' ', '-').gsub('é', 'e').downcase
  end

end
