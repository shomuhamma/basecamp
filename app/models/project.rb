class Project < ApplicationRecord
  belongs_to :user
  has_many :prms, dependent: :destroy
  has_many :patches, dependent: :destroy
  has_many :prtds, dependent: :destroy
end
