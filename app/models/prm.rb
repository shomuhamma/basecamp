class Prm < ApplicationRecord
  belongs_to :project
  has_many :prmers, dependent: :destroy
end
