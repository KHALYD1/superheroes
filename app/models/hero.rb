class Hero < ApplicationRecord
    validates :name, presence: true
    validates :super_name, presence: true, uniqueness: true
  end
  