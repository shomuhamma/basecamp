class Patch < ApplicationRecord
  belongs_to :project
  has_one_attached :pat
end
