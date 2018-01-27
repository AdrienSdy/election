# frozen_string_literal: true

class Person < ApplicationRecord
  has_many :privileges
  has_many :permissions, through: :privileges

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def admin?
    permissions.map(&:name).include? 'sudo'
  end
end
