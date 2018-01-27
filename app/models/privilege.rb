# frozen_string_literal: true

class Privilege < ApplicationRecord
  belongs_to :person
  belongs_to :permission
end
