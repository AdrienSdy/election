# frozen_string_literal: true

class Permission < ApplicationRecord
  has_many :privileges
  has_many :people, through: :privileges
end
